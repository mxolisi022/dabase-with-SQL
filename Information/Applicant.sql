
CREATE TABLE Applicant (
    ApplicantID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BirthDate VARCHAR(50) NOT NULL,
    ApplicantContactID INT NOT NULL,
    ApplicantCharactID INT NOT NULL,
    NationalityID INT NOT NULL,
    SexID INT NOT NULL,


    FOREIGN KEY (ApplicantContactID) REFERENCES ApplicantContact(ApplicantContactID),
    FOREIGN KEY (NationalityID) REFERENCES Nationality(NationalityID),
    FOREIGN KEY (SexID) REFERENCES Sex(SexID)
);