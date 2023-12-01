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

GO
--Query/View to locate the richest people the factions they are in
CREATE OR ALTER VIEW Richest_People AS
SELECT TOP 20
    PersonFirstName + ' ' + PersonLastName AS [Name],
    DATEDIFF(YEAR, PersonDateOfBirth, GETDATE()) AS [Age],
    FactionName AS [Faction],
    FactionInfluence AS [Faction Influence],
    CAST(SUM(cp.CurrencyAmount * c.CurrencyValue) AS MONEY) AS [Money on Hand]
FROM DoomsdayDatabase.dbo.Person p 
JOIN DoomsdayDatabase.dbo.Faction f ON p.FactionID = f.FactionID
JOIN DoomsdayDatabase.dbo.CurrencyPerson cp ON p.PersonID = cp.PersonID
JOIN DoomsdayDatabase.dbo.Currency c ON c.CurrencyID = cp.CurrencyID
GROUP BY 
    PersonFirstName + ' ' + PersonLastName,
    FactionName,
    FactionInfluence,
    PersonDateOfBirth
ORDER BY [Money on Hand] DESC;


-- Trigger to Delete factions when their influence reaches 0
CREATE TRIGGER trg_UpdateFaction
ON [dbo].[Faction]
INSTEAD OF UPDATE
AS
	DECLARE @factionID INT;
	DECLARE @newinfluence INT;
	DECLARE @oldinfluence INT;
	DECLARE @factionName NVARCHAR(35);

	SELECT @factionID = i.FactionID FROM inserted i;
	SELECT @newinfluence = i.FactionInfluence FROM inserted i;
	SELECT @oldinfluence = d.FactionInfluence FROM deleted d;
	SELECT @factionName = d.FactionName FROM deleted d;

	BEGIN
		IF EXISTS(SELECT * FROM inserted i JOIN deleted d ON i.FactionID = d.FactionID WHERE i.FactionInfluence <= 0)
			BEGIN
				DELETE FROM DoomsdayDatabase.dbo.FactionLocation WHERE FactionID IN (SELECT FactionID FROM deleted);
				UPDATE DoomsdayDatabase.dbo.Person SET FactionID = NULL WHERE FactionID IN (SELECT FactionID FROM deleted);
				DELETE FROM DoomsdayDatabase.dbo.Faction WHERE FactionID in (SELECT FactionID FROM deleted);
				PRINT 'Faction ' + @factionName + ' has been disbanded';
			END
		ELSE
			BEGIN
				UPDATE DoomsdayDatabase.dbo.Faction SET FactionInfluence = (SELECT FactionInfluence from inserted) WHERE FactionID in (SELECT FactionID FROM inserted);
			END
	END;
GO

-- SPROC to get all information on a person into one report
CREATE PROCEDURE [dbo].[usp_GetPersonInformation]
    @PersonID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Get basic person information
    SELECT
        PersonFirstName + ' ' + PersonLastName AS [Name],
        PersonDateOfBirth AS [DOB],
		DATEDIFF(YEAR,PersonDateOfBirth,GETDATE()) AS [Age],
        PersonCallSign AS [Call Sign],
        PersonHealth AS [Health %],
        CASE 
			WHEN PersonDeceased = 1 THEN 'YES'
			ELSE 'No'
		END AS [Is Deceased],
        PersonDateOfDeath AS [Date of Death],
        l.LocationName AS [Location],
		lod.LodgingName AS [Lodging Type],
        f.FactionName AS [Faction]

    FROM
        dbo.Person p
    LEFT JOIN
        dbo.LocationLodging ll ON p.LocationLodgingID = ll.LocationLodgingID
    LEFT JOIN
        dbo.Location l ON ll.LocationID = l.LocationID
	LEFT JOIN
		Lodging lod ON ll.LodgingID = lod.LodgingID
    LEFT JOIN
        dbo.Faction f ON p.FactionID = f.FactionID
    WHERE
        p.PersonID = @PersonID;

    -- Get skills information
    SELECT
        s.SkillName,
        ps.PersonSkillProficiency
    FROM
        dbo.PersonSkill ps
    JOIN
        dbo.Skill s ON ps.SkillID = s.SkillID
    WHERE
        ps.PersonID = @PersonID;

    -- Get tasks information
    SELECT
        t.TaskName,
        ts.TaskStatusDescription,
        pt.PersonTaskStartDate,
        pt.PersonTaskDueDate
    FROM
        dbo.PersonTask pt
    JOIN
        dbo.Task t ON pt.TaskID = t.TaskID
    JOIN
        dbo.TaskStatus ts ON pt.TaskStatusID = ts.TaskStatusID
    WHERE
        pt.PersonID = @PersonID;

	-- Get wallet information
	SELECT 
		c.CurrencyName,
		c.CurrencyValue,
		cp.CurrencyAmount,
		CAST(SUM(cp.CurrencyAmount * c.CurrencyValue) AS MONEY) AS [Total Value]
	FROM 
		CurrencyPerson cp 
	JOIN 
		Currency c ON cp.CurrencyID = c.CurrencyID
	WHERE
		cp.PersonID = @PersonID
	GROUP BY 
		c.CurrencyName,
		c.CurrencyValue,
		cp.CurrencyAmount;

