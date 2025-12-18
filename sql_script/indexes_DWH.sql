-- Foreign key to Dim_Category
CREATE NONCLUSTERED INDEX IX_Fact_Parts_Category_ID
ON dbo.Fact_Parts (Category_ID);

-- Foreign key to Dim_Color
CREATE NONCLUSTERED INDEX IX_Fact_Parts_Color_ID
ON dbo.Fact_Parts (Color_ID);

-- Business key used for grouping / analysis
CREATE NONCLUSTERED INDEX IX_Fact_Parts_Part_Num
ON dbo.Fact_Parts (Part_Num);

-- Index to optimize filtering and joins on category name in analytical queries
CREATE NONCLUSTERED INDEX IX_Dim_Category_Name
ON dbo.Dim_Category (Name);

-- Index to optimize filtering and joins on color name in analytical queries
CREATE NONCLUSTERED INDEX IX_Dim_Color_Name
ON dbo.Dim_Color (Name);