
CREATE TABLE InstitutionManangement (
    InstitutionManangementID INT PRIMARY KEY AUTO_INCREMENT,
    InstitutionID INT NOT NULL,
    ManangerID INT NOT NULL,
    HeadOfManangertID INT UNIQUE,


    FOREIGN KEY (InstitutionID) REFERENCES Institution(InstitutionID),
    FOREIGN KEY (ManangerID) REFERENCES Mananger(ManangerID),
);