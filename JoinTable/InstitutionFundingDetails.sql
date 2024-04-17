
CREATE VIEW InstitutionFundAppliDetails AS
SELECT
    AI.ApplicationID,
    AI.FundingYear,
    AI.InstitutionID,
    AI.Comment,
    AI.Amount,
    I.Name AS InstitutionName,
    AI.StatusID
FROM
    InstitutionFundAppli AI
    JOIN Institution I ON AI.InstitutionID = I.InstitutionID;

