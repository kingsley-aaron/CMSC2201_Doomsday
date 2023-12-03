-- Trigger to check if person is alive before adding to PersonTask table

CREATE TRIGGER trg_CheckPersonAliveBeforeInsert
ON PersonTask
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if any of the persons to be inserted are deceased
    IF EXISTS (
        SELECT 1
        FROM inserted i
        INNER JOIN Person p ON i.PersonID = p.PersonID
        WHERE p.PersonDeceased = 1
    )
    BEGIN
        RAISERROR ('Cannot add tasks for deceased persons.', 16, 1);
        RETURN;
    END;

    -- If all persons are alive, proceed with the insertion
    INSERT INTO PersonTask (PersonID, TaskID, TaskStatusID, PersonTaskStartDate, PersonTaskDueDate)
    SELECT PersonID, TaskID, TaskStatusID, PersonTaskStartDate, PersonTaskDueDate
    FROM inserted;
END;


-- Stored Procedure to check if PersonTaskStartDate is in the past and if so
-- update TaskStatusID from 1 (Not Started) -> 2 (In Progress)
-- Can set up a Job to automate this process, might be too complex for the scope

CREATE PROCEDURE sp_UpdateTaskStatus
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE PersonTask
    SET TaskStatusID = 2
    WHERE TaskStatusID = 1 AND PersonTaskStartDate <= CONVERT(DATE, GETDATE());
END;



--create view of the tasks that are overdue and display the person and task
CREATE VIEW	overDueTasks AS
SELECT dbo.PersonTask.PersonID,CONCAT(dbo.Person.PersonFirstName,' ',dbo.Person.PersonLastName) AS Name,
PersonTaskStartDate, PersonTaskDueDate,TaskName,TaskDescription
FROM dbo.PersonTask
JOIN dbo.Task ON dbo.task.TaskID = dbo.PersonTask.TaskID
JOIN dbo.Person ON dbo.Person.PersonID = dbo.PersonTask.PersonID
WHERE TaskStatusID = 4;


--Michael
--create temp table called deceased to hold information on deceased
CREATE TABLE [dbo].[Deceased](
    [DeceasedID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [PersonID] [int] NOT NULL,
    [PersonFirstName] nvarchar(255)  NOT NULL,
    [PersonLastName] nvarchar(255) NOT NULL,
	[PersonDateOfBirth] [date] NOT NULL,
	[FactionID] [int] NOT NULL,
    [DeathTimestamp] [datetime] DEFAULT GETDATE() NOT NULL
);
--create trigger that adds the name of the deceased after the table updates 
CREATE TRIGGER trg_PassedAway 
ON [dbo].[Person]
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;

	 INSERT INTO [dbo].[Deceased] ([PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [FactionID])
     SELECT [PersonID], [PersonFirstName], [PersonLastName], [PersonDateOfBirth], [FactionID]
     FROM inserted
     WHERE [PersonDeceased] = 1;
 END;

 --Stored Proc
 CREATE PROCEDURE sp_FactionDetail
--initiate variables and set to null
    @factionInfluence INT = NULL,
    @factionMembers INT = NULL
AS
BEGIN

    SET NOCOUNT ON;
-- Initialize the @sql with a placeholder
    DECLARE @sql NVARCHAR(MAX);
	DECLARE @sql2 NVARCHAR(MAX);
    SET @sql = N'SELECT * FROM dbo.Faction';
	SET @sql2 = N'SELECT PersonID,PersonFirstName,PersonLastName,PersonDateOfBirth,PersonCallSign,PersonHealth,PersonDeceased
	FROM dbo.Faction';
--change conditions based on entered values
--factionMembers list
    IF @factionMembers IS NOT NULL
    BEGIN
        SET @sql = @sql2 + N' JOIN dbo.Person ON dbo.Person.FactionID = dbo.Faction.FactionID' +
		N' AND dbo.Person.FactionID = @factionMembers';
    END

    IF @factionInfluence IS NOT NULL
    BEGIN
        SET @sql = @sql + N' WHERE FactionInfluence = @factionInfluence';
    END

  -- Execute the dynamic SQL query 
    EXEC sp_executesql @sql,
        N'@factionInfluence INT, @factionMembers INT',
        @factionInfluence, @factionMembers;
END

