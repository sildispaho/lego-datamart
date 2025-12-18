# Azure ETL Proof of Concept

This folder contains an optional Azure-based proof of concept demonstrating how the SQL Server ETL solution can be migrated to a cloud-native architecture.

## Implemented Services
- Azure Blob Storage
  - Raw and curated containers
  - Partitioned folder structure (`load_date=YYYY-MM-DD`)
- Azure Data Factory
  - Batch pipeline orchestrating data movement from raw to curated
  - Copy activity processing multiple CSV files using wildcard paths

## Data Flow
Azure Blob Storage (raw)
→ Azure Data Factory (Copy activity)
→ Azure Blob Storage (curated)

## Scope and Assumptions
- This implementation was developed as a proof of concept
- Transformations remain implemented in SQL Server
- Azure components demonstrate storage and orchestration only

## Outcome
The Azure Data Factory pipeline executed successfully and produced curated datasets ready for downstream analytics or Databricks processing.
