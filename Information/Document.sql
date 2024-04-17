
CREATE TABLE Document (
    DocumentID INT PRIMARY KEY AUTO_INCREMENT,
    Transcript LONGBLOB,
    IdentityDocument LONGBLOB,
    ApplicationID INT
);

ALTER TABLE Document
ADD CONSTRAINT ForeignKeyStudentApplication
FOREIGN KEY (ApplicationID) REFERENCES StudentApplication(ApplicationID);
