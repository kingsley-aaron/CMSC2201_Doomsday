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
