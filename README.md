# CPSC368

## List of external libraries
import oracledb
import numpy as np
import pandas as pd
import altair as alt
import matplotlib.pyplot as plt
import seaborn as sns

## Project files
insert_statements.sql -> Creates tables based the schema and inserts values to the tables
query.sql -> The SQL query used in order to join the tables together
joined_data.csv -> The csv file obtained after joining the tables and exporting it from SQL
Visualisation.ipynb -> The python code to create the visualisations for the project, and implement the methodology

### The location of the SQL queries
In the query.sql file


#### More specific steps on how the csv file was extrated to use in python
1. Follow the steps in the “Setting Up” section at https://www.students.cs.ubc.ca/~cs-368/resources/sql-plus-setup.html#setting-up.
2. Use SSH to connect to remote.students.cs.ubc.ca using your CWL ID: ssh cwl@remote.students.cs.ubc.ca
3. use wget https://raw.githubusercontent.com/K2712/CPSC368/refs/heads/main/insert_statements.sql download the file to your account on the department server.
4. From the directory where you put insert_statements.sql, log in to SQL*Plus by typing the command: aqlplus ora_CWLid@stu
5. Once SQL*Plus is started, you will see the prompt SQL>. Please type start bookbiz.sql;
6. Please fun the following lines:
SET COLSEP ','
SET PAGESIZE 0
SET TRIMSPOOL ON
SET LINESIZE 1000
SET FEEDBACK OFF
SET ECHO OFF

SPOOL joined_data.csv

SELECT 
    c.name AS country,
    wb.health_expenditure,
    wb.gdp_per_capita,
    wb.immunization_rate,
    wb.internet_usage,
    wb.urban_population,
    un.crude_death_rate,
    un.life_expectancy
FROM Countries c
JOIN World_Bank_Data wb ON c.country_id = wb.country_id
JOIN UN_Data un ON c.country_id = un.country_id;

SPOOL OFF

7. You will now be able to view the file in your directory. Please download it to your local computer by typing this in your terminal (replace cwl with your cwl) scp cwl@remote.students.cs.ubc.ca:~/cs368/joined_data.csv .
