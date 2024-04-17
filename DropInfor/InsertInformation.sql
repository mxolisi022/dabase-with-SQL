
CREATE OR REPLACE PROCEDURE InsertApplicantApplication(
    ApplicantID INT,
    Grade INT,
    Amount MONEY
)
AS

DECLARE
    ApplicationID INT;
BEGIN
    INSERT INTO ApplicantApplication (Grade, Amount)
    VALUES (Grade, Amount)
    RETURNING ApplicationID INTO ApplicationID;

    INSERT INTO ApplicantInforApplicantApplication (ApplicantID, ApplicationID)
    VALUES (ApplicantID, ApplicationID);
END;