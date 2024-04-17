
CREATE TABLE ApplicantInfor (
    ApplicantID INT PRIMARY KEY AUTO_INCREMENT,
    IDNumber VARCHAR(13) NOT NULL,
    BirthDate DATE NOT NULL,
    Age INT AS (ROUND(DATEDIFF(CURRENT_DATE(), BirthDate) / 365.25)),
    Sex VARCHAR(120) NOT NULL,
    ApplicantID INT NOT NULL,
    NationalityID INT NOT NULL
);