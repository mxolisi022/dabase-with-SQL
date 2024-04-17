
CREATE VIEW tInstitutionManangementApplicant AS
SELECT
    N.FirstName,
    N.LastName,
    N.BirthDate,
    I.InstitutionName,
    M.ManangerName
FROM
    Applican N
JOIN
    InstutitionManangement IM ON IM.InstutitionManangementID = SA.InstutitionManangementID
JOIN
    Institution I ON I.InstitutionID = IT.InstitutionID
JOIN
    Mananger M ON M.ManangerID = IM.ManangerID
JOIN
    ApplicantApplication SA ON SA.ApplicantID = N.ApplicantID;