
CREATE OR REPLACE FUNCTION ibFindInstitutionInfor(
    InstitutionName VARCHAR(100)
)
RETURNS TABLE (
    InstitutionID INT,
    Name VARCHAR(100),
    ApplicationID INT,
    FundingYear INT,
    Amount MONEY,
    StatusID INT,
    Comment VARCHAR(200)
)
AS
BEGIN
    RETURN QUERY
    SELECT
        IT.InstitutionID,
        IT.Name,
        ITfund.ApplicationID,
        ITfund.Comment
        ITfund.FundingYear,
        ITfund.Amount,
        ITfund.StatusID,
    FROM
        Institution IT
    LEFT JOIN
        InstitutionFundAppli ITfund ON IT.InstitutionID = ITfund.InstitutionID
    WHERE
        IT.Name = InstitutionName;
END;