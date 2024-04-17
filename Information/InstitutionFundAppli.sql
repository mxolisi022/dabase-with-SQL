
CREATE TABLE InstitutionFundAppli (
    ApplicationID INT PRIMARY KEY AUTO_INCREMENT,
    InstitutionID INT,
    FundingYear DATE,
    Amount DECIMAL(18, 2) NOT NULL,
    StatusID INT,
    Comment VARCHAR(200)
);

ALTER TABLE InstitutionFundAppli
ADD CONSTRAINT ForeignKeyInstitutionID
FOREIGN KEY (InstitutionID) REFERENCES Institution(InstitutionID),
ADD CONSTRAINT ForeignKeyStatusID
FOREIGN KEY (StatusID) REFERENCES Status(StatusID);