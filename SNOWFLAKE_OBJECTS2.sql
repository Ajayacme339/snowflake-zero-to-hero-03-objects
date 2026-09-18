USE ROLE SYSADMIN;
USE WAREHOUSE COMPUTE_WH;

----------------------------------------------------
-- Database: Container (logical collection of schemas, tables, views, stored procedures, functions)
----------------------------------------------------

CREATE DATABASE DATAENGINEERING;

----------------------------------------------------
-- Schema: Collection of tables, views, stored procedures, functions
----------------------------------------------------

USE DATABASE DATAENGINEERING;

CREATE SCHEMA RAW;
CREATE SCHEMA TRANSFORMED;
CREATE SCHEMA ENHNACED;

----------------------------------------------------
-- Table: Data structure (collection of rows and columns)
--   - Structured Data
--   - Unstructured Data
--   - Semi-structured Data
----------------------------------------------------

CREATE TABLE RAW.CUSTOMER(CUSTOMER_NAME VARCHAR(200), CUSTOMER_ID INT PRIMARY KEY, CUSTOMER_ADDRESS VARCHAR);
CREATE TABLE RAW.EMPLOYEE(EMPLOYEE_NAME VARCHAR(200), EMPLOYEE_ID INT PRIMARY KEY, EMPLOYEE_ADDRESS VARCHAR, DEPT VARCHAR(200));

-- Individual table properties
DESC TABLE RAW.CUSTOMER;

-- Display all tables
SHOW TABLES;

----------------------------------------------------
-- Inserting data into a table
----------------------------------------------------

INSERT INTO RAW.CUSTOMER(CUSTOMER_NAME, CUSTOMER_ID, CUSTOMER_ADDRESS) VALUES ('AJAY', 24, 'OHIO');

SELECT * FROM RAW.CUSTOMER;

INSERT INTO RAW.CUSTOMER(CUSTOMER_NAME, CUSTOMER_ID, CUSTOMER_ADDRESS) VALUES ('ADAM', 25, 'WISCONSION');

SELECT * FROM RAW.CUSTOMER;


-- INSERT INTO RAW.CUSTOMER(CUSTOMER_NAME, CUSTOMER_ID, CUSTOMER_ADDRESS) VALUES ('AJAY', 24, 'OHIO');

SELECT * FROM RAW.CUSTOMER;

INSERT INTO RAW.CUSTOMER(CUSTOMER_ID) VALUES (245);

SELECT * FROM RAW.CUSTOMER;

----------------------------------------------------
-- Cleanup and new database
----------------------------------------------------

DROP DATABASE DATAENGINEERING;

CREATE DATABASE COUNTRIES;

DROP SCHEMA PUBLIC;

CREATE SCHEMA COUNTRY_DATA;