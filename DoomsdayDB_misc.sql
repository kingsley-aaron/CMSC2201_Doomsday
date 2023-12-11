-- Sean

-- Created View to find the most proficient members in Minneapolis and St. Paul
CREATE VIEW vw_SkilledIndividualsAtCommunityCenter AS
SELECT 
    CONCAT(P.PersonFirstName, ' ', P.PersonLastName) AS Name, 
	L.LocationName,
    S.SkillName,
    PS.PersonSkillProficiency
FROM Person P
INNER JOIN PersonSkill PS ON P.PersonID = PS.PersonID
INNER JOIN Skill S ON PS.SkillID = S.SkillID
INNER JOIN LocationLodging LL ON P.LocationLodgingID = LL.LocationLodgingID
INNER JOIN Location L ON LL.LocationID = L.LocationID
WHERE (LL.LocationID = 1 OR LL.LocationID = 2) AND PS.PersonSkillProficiency >= 7;


-- Trigger to notify maintenance teams if PowerAmount falls below 10% of PowerCapacity
CREATE TRIGGER trg_PowerOutageNotification
ON Inventory
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1 
        FROM inserted i
        INNER JOIN deleted d ON i.PowerSourceID = d.PowerSourceID
        WHERE i.InvPowerAmount < i.InvPowerCapacity * 0.10 -- Checking for less than 10% of capacity
    )
    BEGIN
        -- Raising an error message for notification
        RAISERROR ('Power below 10%% of capacity, notify maintenance team', 16, 1);
    END
END;


-- Updated Stored Procedure with Amounts as a parameter.
CREATE PROCEDURE sp_AllocateResources
    @LocationID INT, 
    @ResourceType NVARCHAR(50), -- Resource Type 'Food', 'Water', 'Power'
    @ResourceID INT,            -- ID for the specific resource
    @Amount DECIMAL(8,2),       -- Amount of the resource
    @Capacity DECIMAL(8,2) = NULL -- Capacity, only used for Power resources
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the specified location exists
    IF NOT EXISTS (SELECT 1 FROM Location WHERE LocationID = @LocationID)
    BEGIN
        RAISERROR ('Invalid location specified', 16, 1);
        RETURN;
    END

    -- Allocate Food resources
    IF @ResourceType = 'Food'
    BEGIN
        -- Check if the FoodID exists
        IF NOT EXISTS (SELECT 1 FROM Food WHERE FoodID = @ResourceID)
        BEGIN
            RAISERROR ('Invalid FoodID specified', 16, 1);
            RETURN;
        END

        -- Assign Food resource to the location
        IF NOT EXISTS (SELECT 1 FROM Inventory WHERE LocationID = @LocationID AND FoodID = @ResourceID)
        BEGIN
            INSERT INTO Inventory (LocationID, FoodID, InvFoodAmount)
            VALUES (@LocationID, @ResourceID, @Amount);
        END
        ELSE
        BEGIN
            RAISERROR ('Food resource already assigned to this location', 16, 1);
        END
    END
    ELSE IF @ResourceType = 'Water'
    BEGIN
        -- Check if the WaterSourceID exists
        IF NOT EXISTS (SELECT 1 FROM WaterSource WHERE WaterSourceID = @ResourceID)
        BEGIN
            RAISERROR ('Invalid WaterSourceID specified', 16, 1);
            RETURN;
        END

        -- Assign Water resource to the location
        IF NOT EXISTS (SELECT 1 FROM Inventory WHERE LocationID = @LocationID AND WaterSourceID = @ResourceID)
        BEGIN
            INSERT INTO Inventory (LocationID, WaterSourceID, InvWaterQuantity)
            VALUES (@LocationID, @ResourceID, @Amount);
        END
        ELSE
        BEGIN
            RAISERROR ('Water resource already assigned to this location', 16, 1);
        END
    END
    ELSE IF @ResourceType = 'Power'
    BEGIN
        -- Check if the PowerSourceID exists
        IF NOT EXISTS (SELECT 1 FROM PowerSource WHERE PowerSourceID = @ResourceID)
        BEGIN
            RAISERROR ('Invalid PowerSourceID specified', 16, 1);
            RETURN;
        END

        -- Assign Power resource to the location
        IF NOT EXISTS (SELECT 1 FROM Inventory WHERE LocationID = @LocationID AND PowerSourceID = @ResourceID)
        BEGIN
            INSERT INTO Inventory (LocationID, PowerSourceID, InvPowerCapacity, InvPowerAmount)
            VALUES (@LocationID, @ResourceID, @Capacity, @Amount);
        END
        ELSE
        BEGIN
            RAISERROR ('Power resource already assigned to this location', 16, 1);
        END
    END
    ELSE
    BEGIN
        RAISERROR ('Resource type not recognized', 16, 1);
    END
END;


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
    FactionInfluence
    ,PersonDateOfBirth
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


-- Trigger to update influence when a new location and faction are added to FactionLocation table.

CREATE TRIGGER [dbo].[trg_UpdateInfluence]
ON [dbo].[FactionLocation]
AFTER INSERT
AS
	DECLARE @newfactionID INT;
	DECLARE @newinfluence INT;
	
	SELECT @newfactionID = i.FactionID FROM inserted i;
	

	BEGIN
		IF EXISTS(SELECT i.FactionID FROM inserted i JOIN Faction ON i.FactionID = Faction.FactionID)
			BEGIN
				UPDATE DoomsdayDatabase.dbo.Faction SET Faction.FactionInfluence = FactionInfluence +1
				WHERE Faction.FactionID = @newfactionID AND FactionInfluence <=9
			END
	END;


-- SPROC to update date of death and deceased status when health reaches 0
CREATE PROCEDURE [dbo].[sp_ZeroHealth]
AS
BEGIN
    SET NOCOUNT ON;
	BEGIN
    UPDATE Person
    SET PersonDeceased = 1,
	PersonDateOfDeath =  CONVERT(Date, GETDATE())
    WHERE PersonHealth = 0 AND PersonDeceased = 0;
END
END;

-- View to find safest locations when danger is imminent
CREATE VIEW view_SafestLocations
AS
SELECT TOP (100) PERCENT LocationName, LocationDescription, LocationSafetyLevel
FROM     dbo.Location
GROUP BY LocationSafetyLevel, LocationName, LocationDescription
ORDER BY LocationSafetyLevel DESC

GO

-- View to get combined wealth of each faction
CREATE VIEW FactionWealthView AS
SELECT
    f.FactionID,
    f.FactionName,
	f.FactionInfluence,
    SUM(cp.CurrencyAmount * c.CurrencyValue) AS CombinedWealth
FROM
    DoomsdayDatabase.dbo.Faction f
JOIN
    DoomsdayDatabase.dbo.Person p ON f.FactionID = p.FactionID
JOIN
    DoomsdayDatabase.dbo.CurrencyPerson cp ON p.PersonID = cp.PersonID
JOIN
    DoomsdayDatabase.dbo.Currency c ON cp.CurrencyID = c.CurrencyID
WHERE
    p.PersonDeceased = 0  -- Consider only alive faction members
GROUP BY
    f.FactionID,
    f.FactionName,
	FactionInfluence
ORDER BY CombinedWealth DESC


GO

-- SPROC to update tasks to overdue if not completed by due date
CREATE PROCEDURE usp_UpdateOverdueTasks
AS 
BEGIN

	UPDATE DoomsdayDatabase.dbo.PersonTask
	SET TaskStatusID = 4
	WHERE TaskStatusID NOT IN (3, 4)
	AND PersonTaskDueDate < GETDATE();
END;
GO

-- SPROC to get report of all in-progress tasks for a faction
ALTER PROCEDURE usp_InProgressTasks
	@factionID INT
AS 
BEGIN
	SELECT 
		p.PersonFirstName + ' ' + p.PersonLastName AS [Name],
		t.TaskName,
		pt.PersonTaskStartDate AS [Start Date],
		pt.PersonTaskDueDate AS [Due Date],
		DATEDIFF(DAY, pt.PersonTaskDueDate, GETDATE()) AS [Days Until Due],
		CASE WHEN pt.TaskStatusID = 4 THEN 'Overdue'
		ELSE 'In-Progress' 
		END AS [Task Status]
		
	FROM
		Person p
	JOIN 
		PersonTask pt ON p.PersonID = pt.PersonID
	JOIN 
		Task t ON pt.TaskID = t.TaskID
	WHERE p.FactionID = @factionID
	AND TaskStatusID in (2, 4)
	ORDER BY [Days Until Due];
END;
GO
