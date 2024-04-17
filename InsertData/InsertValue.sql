

-- Applicant Table
INSERT INTO Applicant (FirstName, LastName, DateOfBirth, Email, PhoneNumber, RaceID, SexID, ApplicantCharactID)
VALUES ('One', 'Admin', '2025-01-01', 'admin2@email.com', '061333587', 2, 1, 1),
        ('Two', 'HOD', '2025-01-01', 'hod2@email.com', '0712365875', 2, 1, 2),
        ('Three', 'HOD', '2025-01-01', 'hod3@email.com', '0726537810', 2, 1, 2),
        ('Four', 'HOD', '2025-01-01', 'hod4@email.com', '0823765341', 2, 1, 2),
        ('SIX', 'HOD', '2025-01-01', 'hod5@email.com', '0732546789', 2, 1, 2),
        ('One', 'Student', '2025-01-01', 'student2@email.com', '0713335456', 2, 1, 3),
        ('Three', 'Student', '2025-01-01', 'student4@email.com', '0739457823', 2, 1, 3),
        ('Two', 'Student', '2025-01-01', 'student3@email.com', '082389024', 2,  1, 3);

-- ApplicantApplication Table
INSERT INTO StudentApplication (Amount, Grade, Comment,  StatusID, ApplicantID)
VALUES (150000, 96, 'High Percentage', 4, 1),
       (180000, 39, 'Low Percentage', 3, 2),
       (200000, 60, '', 2, 3),
       (160000, 77, '', 1, 4);

-- Charact Table
INSERT INTO Charact (Role)
VALUES ('Head of Manager'),
       ('Admin'),
       ('Student');

-- ContactOfAppli Table
INSERT INTO ContactOfAppli (Email, PhoneNumber)
VALUES ('lungelosbahle@yahoo.com', '0739457823'),
       ('mandlaskhosan@hotmail.com', '082389024'),
       ('sfisohadebe@gmail.com', '0673499872'),
       ('aliciangcongo34@gmail.com', '0814587889'),
       ('mikeocana@yahoo.com', '0723345678'),
       ('joseph.mcman54@gmail.com', '0817768982'),
       ('alfredbiosin@hotmail.com', '0662389034'),
       ('londiwe.dlamini768@gmail.com', '0678834456'),
       ('phumeza.buthelezi@yahoo.com', '0839009945'),
       ('lubabalobuthelezi@yahoo.com', '0712020927'),
       ('thobilegabhi@hotmail.com', '0713335456');


-- Funding Table
INSERT INTO Funding (Year, ApplicantAmount, TotalAmount)
VALUES ('2025-01-01', 120000, 4000000),
       ('2024-01-01', 140000, 7000000),
       ('2023-01-01', 160000, 3000000),
       ('2022-01-01', 190000, 7000000);

-- Institution Table
INSERT INTO Institution (ApplicationDate, UniversityID, StatusID)
VALUES ('UNISA', 1, 1),
       ('Umthashane College', 3, 2)
       ('UCT', 3, 2),
       ('UP', 3, 3),
       ('Amajuba College', 2, 1),
       ('UFS', 3,4),
       ('UKZN', 3, 5),
       ('Darmeline College', 2, 3)
       ('Wits', 3, 6),
       ('UJ', 1, 7);

-- InstitutionFundAppli Table
INSERT INTO InstitutionFundAppli (Amount, ApplicationID, InstitutionID)
VALUES (1000000, 1, 1),
       (4000000, 1, 2),
       (6000000, 1, 3);

-- InstitutionManangement Table
INSERT INTO InstitutionManangement (InstitutionID, HeadOfManangerID, ManangerID)
VALUES (1, 3, 2),
       (2, 4, 3),
       (3, 5, 3),
       (3, 6, 4);

-- Mananger Table
INSERT INTO Mananger (ManangerName)
VALUES ('Information Technology'),
       ('Software Engineering');

-- Nationality Table
INSERT INTO Nationality (Nationality)
VALUES ('Black'),
       ('White'),
       ('Indian');

-- Sex Table
INSERT INTO Sex (Sex)
VALUES ('Male'),
       ('Female'),
       ('Prefer Not To Say');

-- Status Table
INSERT INTO Status (Status)
VALUES ('Pending'),
       ('In Review'),
       ('Rejected'),
       ('Approved');
