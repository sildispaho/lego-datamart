# lego-datamart


## Overview
This project implements an end-to-end ETL pipeline using SQL Server, SSIS, and Python.
The pipeline loads LEGO datasets into a staging layer, transforms them into a normalized schema,
and finally populates a Data Warehouse (DWH) designed using a star schema.

## Architecture
- Stage Layer: Raw data ingestion and validation
- Normalized Layer: Cleaned and relational schema
- Data Warehouse Layer: Fact and Dimension tables
- Reporting Layer: Stored procedure 

## Technology Stack
- SQL Server Express Edition
- SQL Server Integration Services (SSIS)
- Python (pandas, pyodbc)
- GitHub

## ETL Process
1. Data is loaded into staging tables and validated.
2. Valid data is moved to the normalized schema.
3. Aggregated data is loaded into the DWH fact and dimension tables.
4. Rejected records are stored in dedicated reject tables.

## Data Warehouse
The DWH consists of:
- Fact_Parts
- Dim_Color
- Dim_Category

## Reporting
A stored procedure was created to count how many parts of category
'Technic Bricks' are with 'Dark Bluish Gray' color.
The procedure inserts daily results into a reporting table.

## Scheduling
Because SQL Server Express does not support SQL Server Agent,
the procedure is still pending for schedule (need clarification)

## Python Analysis
Jupyter Notebook file demonstrates how to connect to SQL Server using pyodbc,
load DWH data into pandas DataFrames, and visualize analytical results.

## Repository Structure
See folders for SQL scripts, SSIS packages, Python analysis and database backup.
