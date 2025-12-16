CREATE database DWH;
GO

CREATE TABLE Dim_Color
(
ID INT Primary KEY NOT NULL,
Name VARCHAR(200) NOT NULL,
RGB VARCHAR(6) NULL,
Is_Trans BIT NOT NULL
);

CREATE TABLE Dim_Category
(
ID INT PRIMARY KEY NOT NULL,
Name VARCHAR(200) NOT NULL
);

CREATE TABLE Fact_Parts
(
Unique_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Part_Num VARCHAR(20) NOT NULL,
Part_Name VARCHAR(250) NULL,
Color_ID INT NOT NULL,
Category_ID INT NOT NULL,
Nr_of_Parts INT NOT NULL,
Nr_of_Children INT NOT NULL,

    CONSTRAINT FK_Fact_Parts_Color
        FOREIGN KEY (Color_ID)
        REFERENCES Dim_Color (ID),

    CONSTRAINT FK_Fact_Parts_Category
        FOREIGN KEY (Category_ID)
        REFERENCES Dim_Category (ID)
);