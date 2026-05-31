# Customer Data Quality Governance Dashboard

## Project Overview

This project is an end-to-end data quality and governance analysis using **Excel, SQL, Power BI, Power Query, and DAX**. The goal of the project is to identify and monitor customer data quality issues such as missing emails, invalid email formats, missing phone numbers, duplicate records, and state-level data quality trends.

The project simulates a real business data analyst workflow where raw customer data is collected, audited with SQL, cleaned and transformed, then visualized in Power BI for reporting and decision-making.

## Business Objective

Organizations rely on accurate customer data for reporting, communication, compliance, and operational decision-making. Poor data quality can lead to inaccurate reporting, failed customer communication, duplicate records, and governance issues.

This dashboard helps answer:

* How many customer records contain data quality issues?
* Which data fields have the most issues?
* Which states have the highest number of incomplete or invalid records?
* Are there duplicate customer records?
* What is the overall customer data quality score?

## Tools Used

* **Excel**: Raw customer dataset
* **MySQL Workbench**: SQL data quality checks
* **SQL**: Missing value detection, invalid email detection, duplicate record detection, and state-level summaries
* **Power BI**: Dashboard creation and data visualization
* **Power Query**: Data transformation and quality flag creation
* **DAX**: KPI measures and data quality score calculations

## Dataset

The dataset contains customer records with the following fields:

* Customer ID
* First Name
* Last Name
* Email
* Phone
* State
* Account Type
* Join Date
* Balance

The dataset intentionally includes data quality issues such as:

* Missing emails
* Invalid email values
* Missing phone numbers
* Duplicate customer records

## SQL Analysis

SQL was used to perform data quality audits before building the Power BI dashboard.

### SQL checks included:

* Missing email detection
* Invalid email format detection
* Missing phone number detection
* Duplicate customer record detection
* State-level data quality summary

The SQL script can be found here:

[View SQL Queries](sql/customer_data_quality_queries.sql)

## Power BI Dashboard

The Power BI dashboard includes:

* Total customer records
* Overall data quality score
* Invalid email count
* Missing email count
* Missing phone count
* Customer records by state
* Data quality issues by type
* Missing emails by state
* Invalid emails by state

## Dashboard Screenshots

### KPI Cards

![KPI Cards](screenshots/KPI%20cards.png)

### Overall Data Quality Score

![Overall Data Quality Score](screenshots/Overall%20Data%20Quality%20Score.png)

### Invalid Email Count

![Invalid Email Count](screenshots/Invalid%20Email%20Count.png)

### Missing Email Count

![Missing Email Count](screenshots/Missing%20Email%20Count.png)

## Key Findings

* The dataset contains **50 total customer records**.
* The overall data quality score is **90%**.
* There are **5 invalid email records**.
* There are **5 missing email records**.
* There are **5 missing phone number records**.
* SQL duplicate detection identified multiple repeated customer records.
* State-level SQL analysis showed that data quality issues vary across regions.

## Project Files

* [Dataset - Excel](data/Customer_Data_Quality.xlsx)
* [Dataset - CSV](data/Customer_Data_Quality.csv)
* [SQL Queries](sql/customer_data_quality_queries.sql)
* [Power BI Dashboard](powerbi/Customer_Data_Quality_Dashboard.pbix)

## Skills Demonstrated

* SQL querying
* Data quality auditing
* Data cleaning
* Data governance reporting
* Power BI dashboard development
* DAX measure creation
* Power Query transformations
* KPI development
* Business intelligence reporting
