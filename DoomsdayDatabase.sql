USE Master;
GO

-- Create the DoomsdayDatabase
CREATE DATABASE DoomsdayDatabase;
GO

-- Use the database
USE DoomsdayDatabase;
GO

-- Create the Location table
CREATE TABLE Location (
    LocationID INT IDENTITY(1,1) PRIMARY KEY,
    LocationName NVARCHAR(35),
    LocationDescription NVARCHAR(MAX),
    LocationSafetyLevel TINYINT CHECK (LocationSafetyLevel BETWEEN 1 AND 5),
    LocationExpansionPotential TINYINT CHECK (LocationExpansionPotential BETWEEN 1 AND 5)
);

--Create the Lodging table
CREATE TABLE Lodging (
    LodgingID INT IDENTITY(1,1) PRIMARY KEY,
    LodgingName NVARCHAR(35),
    LodgingDescription NVARCHAR(50),
);

--Create the LocationLodging table
CREATE TABLE LocationLodging (
    LocationLodgingID INT IDENTITY(1,1) PRIMARY KEY,
	LodgingID INT,
	LocationID INT,
	LocationLodgingSecurity TINYINT,
	LocationLodgingCondition TINYINT,
    LocationLodgingCapacity INT,
	FOREIGN KEY (LodgingID) REFERENCES Lodging(LodgingID),
	FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Create the Faction table
CREATE TABLE Faction (
    FactionID INT IDENTITY(1,1) PRIMARY KEY,
    FactionName NVARCHAR(35),
    FactionSize INT CHECK (FactionSize > 0),
    FactionInfluence TINYINT CHECK (FactionInfluence BETWEEN 1 AND 10),
    FactionCoffer DECIMAL(12,2)
);

-- Create the FactionLocation Table
CREATE TABLE FactionLocation (
    FactionID INT,
    LocationID INT,
    PRIMARY KEY (FactionID, LocationID),
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- Create the FoodSource table
CREATE TABLE FoodSource (
    FoodSourceID INT IDENTITY(1,1) PRIMARY KEY,
    FoodSource NVARCHAR(35)
);

-- Create the WaterSource table
CREATE TABLE WaterSource (
    WaterSourceID INT IDENTITY(1,1) PRIMARY KEY,
    WaterSource NVARCHAR(35),
    WaterQuality TINYINT CHECK (WaterQuality BETWEEN 1 AND 5)
);

-- Create the PowerSource table
CREATE TABLE PowerSource (
    PowerSourceID INT IDENTITY(1,1) PRIMARY KEY,
    PowerSource NVARCHAR(35),
    PowerUnits NVARCHAR(35)
);

-- Create the TaskStatus table
CREATE TABLE TaskStatus (
    TaskStatusID INT IDENTITY(1,1) PRIMARY KEY,
    TaskStatusDescription NVARCHAR(50)
);

-- Create the Food table
CREATE TABLE Food (
    FoodID INT IDENTITY(1,1) PRIMARY KEY,
    FoodName NVARCHAR(35),
    FoodExpiryDate DATE,
    FoodSourceID INT,
    FOREIGN KEY (FoodSourceID) REFERENCES FoodSource(FoodSourceID)
);

-- Create the Currency table
CREATE TABLE Currency (
    CurrencyID INT IDENTITY(1,1) PRIMARY KEY,
    CurrencyName NVARCHAR(35),
    CurrencyValue TINYINT CHECK (CurrencyValue BETWEEN 1 AND 255)
);

-- Create the Person table
CREATE TABLE Person (
    PersonID INT IDENTITY(1,1) PRIMARY KEY,
    PersonFirstName NVARCHAR(35),
    PersonLastName NVARCHAR(35),
    PersonDateOfBirth DATE,
    PersonCallSign NVARCHAR(35),
    PersonHealth TINYINT CHECK (PersonHealth BETWEEN 0 AND 100),
    PersonDeceased BIT,
    PersonDateOfDeath DATE,
	LocationLodgingID INT,
    FactionID INT,
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID),
	FOREIGN KEY (LocationLodgingID) REFERENCES LocationLodging(LocationLodgingID),
    CONSTRAINT CHK_PersonDateOfDeath_BeforeToday
        CHECK (PersonDateOfDeath < CONVERT(DATE, GETDATE()))
);

-- Create the Skill table
CREATE TABLE Skill (
    SkillID INT IDENTITY(1,1) PRIMARY KEY,
    SkillName NVARCHAR(50),
    SkillDescription NVARCHAR(MAX)
);

-- Create the Task table
CREATE TABLE Task (
    TaskID INT IDENTITY(1,1) PRIMARY KEY,
    TaskName NVARCHAR(50),
    TaskDescription NVARCHAR(MAX)
);

-- Create the Allies table
CREATE TABLE Allies (
    AlliesID INT IDENTITY(1,1) PRIMARY KEY,
    FactionID INT,
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID)
);

-- Create the Adversaries table
CREATE TABLE Adversaries (
    AdversariesID INT IDENTITY(1,1) PRIMARY KEY,
    FactionID INT,
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID)
);

-- Create the PersonTask table
CREATE TABLE PersonTask (
    PersonID INT,
    TaskID INT,
    TaskStatusID INT CHECK (TaskStatusID BETWEEN 1 AND 4),
    PersonTaskStartDate DATE,
    PersonTaskDueDate DATE,
    PRIMARY KEY (PersonID, TaskID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (TaskID) REFERENCES Task(TaskID),
    FOREIGN KEY (TaskStatusID) REFERENCES TaskStatus(TaskStatusID),
	CONSTRAINT CHK_DueDate_After_StartDate
		CHECK (PersonTaskDueDate >= PersonTaskStartDate)
);

-- Create the Inventory table
CREATE TABLE Inventory (
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,
    LocationID INT,
    FoodID INT,
    InvFoodAmount DECIMAL(8,2), 
    WaterSourceID INT,
    InvWaterQuantity DECIMAL(8,2),
    PowerSourceID INT,
    InvPowerCapacity DECIMAL(8,2),
    InvPowerAmount DECIMAL(8,2),
    InvDateAcquired DATE
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
    FOREIGN KEY (WaterSourceID) REFERENCES WaterSource(WaterSourceID),
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID),
    FOREIGN KEY (PowerSourceID) REFERENCES PowerSource(PowerSourceID),
    CONSTRAINT CHK_PowerAmount_LessThan_Capacity 
        CHECK (InvPowerAmount < InvPowerCapacity)
);

-- Create the CurrencyPerson table
CREATE TABLE CurrencyPerson (
    CurrencyPersonID INT IDENTITY(1,1) PRIMARY KEY,
    PersonID INT,
    CurrencyID INT,
    CurrencyAmount DECIMAL(12,2),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (CurrencyID) REFERENCES Currency(CurrencyID)
);

-- Create the PersonSkill table
CREATE TABLE PersonSkill (
    PersonID INT,
    SkillID INT,
    PersonSkillProficiency TINYINT CHECK (PersonSkillProficiency BETWEEN 1 AND 10),
    PRIMARY KEY (PersonID, SkillID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (SkillID) REFERENCES Skill(SkillID)
);

-- Create the SkillTask table
CREATE TABLE SkillTask (
    TaskID INT,
    SkillID INT,
    SkillTaskDifficulty TINYINT CHECK (SkillTaskDifficulty BETWEEN 1 AND 5),
    PRIMARY KEY (TaskID, SkillID),
    FOREIGN KEY (TaskID) REFERENCES Task(TaskID),
    FOREIGN KEY (SkillID) REFERENCES Skill(SkillID)
);