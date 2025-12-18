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
A report (Technic_Bricks_Report) is built on top of this table using
Microsoft Report Builder and is available in the Report folder for end-user data visualization.

## Scheduling
Because SQL Server Express Edition does not support SQL Server Agent, the stored procedure is scheduled using an external approach.
A Python script is used to execute the stored procedure, and the script is scheduled to run daily at 10:00 AM using **Windows Task Scheduler**.
(python script can be found in the **python** folder).

## Python Analysis
Jupyter Notebook file demonstrates how to connect to SQL Server using pyodbc,
load DWH data into pandas DataFrames, and visualize analytical results.

## Repository Structure
The repository contains:

SQL scripts
SSIS packages
Python scripts and notebooks
Reporting artifacts
Database backup

A detailed technical documentation file describing the architecture and implementation
is provided at the root level of the repository.

## Azure Implementation

An Azure-based proof of concept is included in the `azure` folder, demonstrating how the solution can be orchestrated using Azure Blob Storage and Azure Data Factory.


**P.S. – Database Backup**

The database backup is provided as a compressed file   
due to GitHub file size limitations. The backup can be restored by  
unzipping the file and using the SQL Server `RESTORE DATABASE` command.


