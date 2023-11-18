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
    LocationSafetyLevel TINYINT,
    LocationExpansionPotential TINYINT
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
    FactionSize INT,
    FactionInfluence TINYINT,
);

-- Create the FoodSource table
CREATE TABLE FoodSource (
    FoodSourceID INT IDENTITY(1,1) PRIMARY KEY,
    FoodSource NVARCHAR(35)
);

-- Create the WaterSource table
CREATE TABLE WaterSource (
    WaterSourceID INT IDENTITY(1,1) PRIMARY KEY,
    WaterSource NVARCHAR(35)
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
    FoodAmount DECIMAL(8,2),
    FoodExpiryDate DATE,
    FoodSourceID INT,
    FOREIGN KEY (FoodSourceID) REFERENCES FoodSource(FoodSourceID)
);

-- Create the Water table
CREATE TABLE Water (
    WaterID INT IDENTITY(1,1) PRIMARY KEY,
    WaterQuality TINYINT,
    WaterQuantity DECIMAL(8,2),
    WaterSourceID INT,
    FOREIGN KEY (WaterSourceID) REFERENCES WaterSource(WaterSourceID)
);

-- Create the Power table
CREATE TABLE Power (
    PowerID INT IDENTITY(1,1) PRIMARY KEY,
    PowerCapacity DECIMAL(8,2),
    PowerAmount DECIMAL(8,2), -- This may need to change, no type on the DD
    PowerSourceID INT,
    FOREIGN KEY (PowerSourceID) REFERENCES PowerSource(PowerSourceID)
);

-- Create the Currency table
CREATE TABLE Currency (
    CurrencyID INT IDENTITY(1,1) PRIMARY KEY,
    CurrencyName NVARCHAR(35),
    CurrencyValue TINYINT
);

-- Create the Person table
CREATE TABLE Person (
    PersonID INT IDENTITY(1,1) PRIMARY KEY,
    PersonFirstName NVARCHAR(35),
    PersonLastName NVARCHAR(35),
    PersonDateOfBirth DATE,
    PersonCallSign NVARCHAR(35),
    PersonHealth TINYINT,
    PersonDeceased BIT,
    PersonDateOfDeath DATE,
	LocationLodgingID INT,
    FactionID INT,
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID),
	FOREIGN KEY (LocationLodgingID) REFERENCES LocationLodging(LocationLodgingID)
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
    TaskStatusID INT,
    PersonTaskStartDate DATE,
    PersonTaskDueDate DATE,
    PRIMARY KEY (PersonID, TaskID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (TaskID) REFERENCES Task(TaskID),
    FOREIGN KEY (TaskStatusID) REFERENCES TaskStatus(TaskStatusID)
);

-- Create the Inventory table
CREATE TABLE Inventory (
    InventoryID INT IDENTITY(1,1) PRIMARY KEY,
    LocationID INT,
    WaterID INT,
    FoodID INT,
    PowerID INT,
    FactionID INT,
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
    FOREIGN KEY (WaterID) REFERENCES Water(WaterID),
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID),
    FOREIGN KEY (PowerID) REFERENCES Power(PowerID),
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID)
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
    PersonSkillProficiency TINYINT,
    PRIMARY KEY (PersonID, SkillID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (SkillID) REFERENCES Skill(SkillID)
);

-- Create the SkillTask table
CREATE TABLE SkillTask (
    TaskID INT,
    SkillID INT,
    SkillTaskDifficulty TINYINT,
    PRIMARY KEY (TaskID, SkillID),
    FOREIGN KEY (TaskID) REFERENCES Task(TaskID),
    FOREIGN KEY (SkillID) REFERENCES Skill(SkillID)
);




