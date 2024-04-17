
CREATE TABLE Nationality (
    NationalityID INT PRIMARY KEY AUTO_INCREMENT,
    Nationality VARCHAR(20) NOT NULL
);

ALTER TABLE StudentInformation
ADD CONSTRAINT ForeignKeyNationalityID
FOREIGN KEY (NationalityID) REFERENCES Nationality(NationalityID);