

CREATE OR REPLACE FUNCTION ibInstitutionFind(
    InstitutionName VARCHAR(100)
)
RETURNS MONEY AS

DECLARE
    fund MONEY;
BEGIN
    SELECT SUM(ITfund.Amount) INTO fund
    FROM Institution IT
    LEFT JOIN InstitutionFundAppli ITfund ON IT.InstitutionID = ITfund.InstitutionID
    WHERE IT.Name = InstitutionName;

    RETURN fund;
END;
