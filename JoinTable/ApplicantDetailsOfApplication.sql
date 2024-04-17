
CREATE VIEW StudentApplicationDetails AS
SELECT
    SA.ApplicationID,
    N.FirstName,
    N.LastName,
    S.IDNumber,
    S.BirthDate,
    YEAR(CURRENT_DATE) - YEAR(S.BirthDate) - (RIGHT(CURRENT_DATE, 5) < RIGHT(S.BirthDate, 5)) AS Age,
    S.Sex,
    T.NationalityName,
    I.Name AS InstitutionName,
    EP.Email AS ContactEmail,
    EP.PhoneNumber AS ContactPhoneNumber,
    D.Transcript,
    D.IdentityDocument,
    SA.Grade,
    SA.Amount,
    ST.Type AS ApplicationStatus,
    SA.Comment AS ApplicationComment
FROM
    ApplicantApplication SA
    JOIN StudentInformationStudentApplication SIS ON SA.ApplicationID = SIS.ApplicationID
    JOIN Document D ON SA.ApplicationID = D.ApplicationID
    JOIN Status ST ON SA.StatusID = ST.StatusID
    JOIN InstitutionStudentInformation USI ON S.StudentID = USI.StudentID
    JOIN Institution I ON USI.InstitutionID = I.InstitutionID
    JOIN StudentInformation S ON SIS.StudentID = S.StudentID
    JOIN ContactDetails EP ON N.ContactID = EP.ContactID
    JOIN User N ON S.UserID = N.UserID
    JOIN Nationality T ON S.NationalityID = T.NationalityID;