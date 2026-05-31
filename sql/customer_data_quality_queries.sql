CREATE DATABASE customer_data_quality;
USE customer_data_quality;
CREATE TABLE Customer_Records (
    Customer_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    State VARCHAR(10),
    Account_Type VARCHAR(50),
    Join_Date DATE,
    Balance DECIMAL(10,2)
);
SELECT COUNT(*) 
FROM customer_records;

SELECT *
FROM customer_records
WHERE Email IS NULL OR Email = '';

SELECT *
FROM customer_records
WHERE Email NOT LIKE '%@%.%'
AND Email IS NOT NULL
AND Email <> '';

SELECT *
FROM customer_records
WHERE Phone IS NULL OR Phone = '';

SELECT
    First_Name,
    Last_Name,
    Email,
    Phone,
    COUNT(*) AS Duplicate_Count
FROM customer_records
GROUP BY
    First_Name,
    Last_Name,
    Email,
    Phone
HAVING COUNT(*) > 1;

SELECT
    State,
    COUNT(*) AS Total_Records,
    SUM(CASE WHEN Email IS NULL OR Email = '' THEN 1 ELSE 0 END) AS Missing_Emails,
    SUM(CASE WHEN Email NOT LIKE '%@%.%' AND Email IS NOT NULL AND Email <> '' THEN 1 ELSE 0 END) AS Invalid_Emails,
    SUM(CASE WHEN Phone IS NULL OR Phone = '' THEN 1 ELSE 0 END) AS Missing_Phones
FROM customer_records
GROUP BY State
ORDER BY Total_Records DESC;