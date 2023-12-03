--create view of the tasks that are overdue and display the person and task
CREATE VIEW	overDueTasks AS
SELECT dbo.PersonTask.PersonID,CONCAT(dbo.Person.PersonFirstName,' ',dbo.Person.PersonLastName) AS Name,
PersonTaskStartDate, PersonTaskDueDate,TaskName,TaskDescription
FROM dbo.PersonTask
JOIN dbo.Task ON dbo.task.TaskID = dbo.PersonTask.TaskID
JOIN dbo.Person ON dbo.Person.PersonID = dbo.PersonTask.PersonID
WHERE TaskStatusID = 4;



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
