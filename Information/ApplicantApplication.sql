
CREATE TABLE ApplicantApplication (
    ApplicationID INT PRIMARY KEY AUTO_INCREMENT,
    Grade INT NOT NULL,
    Amount DECIMAL(18, 2),
    StatusID INT NOT NULL DEFAULT 4,
    Comment VARCHAR(200),
    ApplicantID INT NOT NULL
);

ALTER TABLE ApplicantApplication
ADD CONSTRAINT ForeignKeyStatus
FOREIGN KEY (StatusID) REFERENCES Status(StatusID),
ADD CONSTRAINT ForeignKey_ApplicantID
FOREIGN KEY (ApplicantID) REFERENCES ApplicantInformation(ApplicantID);