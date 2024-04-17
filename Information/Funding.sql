
CREATE TABLE Funding (
    FundID INT PRIMARY KEY AUTO_INCREMENT,
    Budget DECIMAL(18, 2),
    FundingYear DATE,
    InstitutionID INT
);