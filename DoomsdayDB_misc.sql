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

	SELECT @factionID = i.FactionID FROM inserted i;
	SELECT @newinfluence = i.FactionInfluence FROM inserted i;
	SELECT @oldinfluence = d.FactionInfluence FROM deleted d;

	BEGIN
		IF EXISTS(SELECT * FROM inserted i JOIN deleted d ON i.FactionID = d.FactionID WHERE i.FactionInfluence <= 0)
			BEGIN
				DELETE FROM DoomsdayDatabase.dbo.FactionLocation WHERE FactionID IN (SELECT FactionID FROM deleted);
				UPDATE DoomsdayDatabase.dbo.Person SET FactionID = NULL WHERE FactionID IN (SELECT FactionID FROM deleted);
				DELETE FROM DoomsdayDatabase.dbo.Faction WHERE FactionID in (SELECT FactionID FROM deleted);
			END
		ELSE
			BEGIN
				UPDATE DoomsdayDatabase.dbo.Faction SET FactionInfluence = (SELECT FactionInfluence from inserted) WHERE FactionID in (SELECT FactionID FROM inserted);
			END
	END;


