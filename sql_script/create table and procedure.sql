USE DWH;
GO

CREATE TABLE Report_Info_Table
(
    Report_Date DATE NOT NULL,
    Nr_of_Parts INT  NOT NULL,
    Load_Timestamp DATETIME DEFAULT SYSDATETIME()
);
GO


CREATE OR ALTER PROCEDURE pr_Report_Info
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Report_Info_Table
    (
        Report_Date,
        Nr_of_Parts
    )
    SELECT
        CAST(GETDATE() AS DATE) AS Report_Date,
        SUM(fp.Nr_of_Parts)     AS Nr_of_Parts
    FROM Fact_Parts fp
    JOIN Dim_Category dc
        ON fp.Category_ID = dc.ID
    JOIN Dim_Color dco
        ON fp.Color_ID = dco.ID
    WHERE
        dc.Name = 'Technic Bricks'
        AND dco.Name = 'Dark Bluish Gray';
END;
GO