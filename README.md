# ETL-DATAVISA-SQL
## Overview
This project provides an ETL (Extract, Transform, Load) pipeline built using Python and Pandas to handle data from a CSV file and load it into a MySQL database. The ETL process is designed to automate the workflow of extracting data from a CSV file, transforming it according to specified rules, and loading the cleaned data into a MySQL database for analysis and reporting. By systematically extracting data from various sources, transforming it into a consistent format, and loading it into a centralized database, ETL processes ensure that businesses have a unified and reliable dataset. A consolidated data set enables better decision-making, detailed operational insights, and precise reporting, ultimately improving business performance and strategic planning.
## Features
**Data Extraction**;
- CSV File Support: The pipeline extracts data from CSV files, allowing for easy integration with data stored in this common format. 
- Flexible File Handling: Handle CSV files with different structures by configuring the input parameters, including different delimiters (e.g., commas, semicolons) and encoding types (e.g., UTF-8, ISO-8859-1). 
**Data Transformation**;
- Automated Data Cleaning: Remove duplicates, handle missing values, and standardize data formats.
**Data Loading**;
- Transaction Management: Uses transactions to ensure data integrity, allowing for rollback in case of errors during the loading phase
- Batch Loading into MySQL: Efficiently load processed data into a MySQL database using Pandas.
- **Performance and Optimization**;
- Efficient Data Processing: Utilize Pandas for fast and memory-efficient data processing
**Scheduling and Automation**;
- Command-Line Interface: Run the ETL process from the command line with customizable parameters.
## Installation
- *install Python 3.12.1*
- *install MySQL Server 8.4.1*
- *install MySQL Workbench latest*
- **Python packages:**
- *pandas*
- *pymysql*
- *openpyxl*
## Usage
- **Step 1** Install required softwares and packages
- **Step 2** Open MySQL Workbench, login into your MySQL server and run SQL scripts/criarBancodeDados.sql
- **Step 3** Copy file from Database/DADOS_ABERTOS_ALIMENTOS.xlsx
- **Step 4** Modify the code to locate your .xlsx file, and locate the cells with 'INSERT' SQL statement and uncomment it.
- **Step 5** Run all.

### Database available at: (https://data.amerigeoss.org/id/dataset/alimentos-registrados-no-brasil)

- *Best regards to [lazarod2311](https://github.com/lazarod2311) for mentoring me throughout the project*.
