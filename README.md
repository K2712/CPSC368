# CPSC368

## List of external libraries
import oracledb <br>
import numpy as np <br>
import pandas as pd <br>
import altair as alt <br>
import matplotlib.pyplot as plt <br>
import seaborn as sns <br>

## Project files
insert_statements.sql -> Creates tables based the schema and inserts values to the tables <br>
query.sql -> The SQL query used in order to join the tables together <br>
joined_data.csv -> The csv file obtained after joining the tables and exporting it from SQL <br>
visualisation.ipynb -> The python code to create the visualisations for the project, and implement the methodology <br>

### The location of the SQL queries
In the query.sql file


#### More specific steps on how the csv file was extrated to use in python
1. Follow the steps in the “Setting Up” section at https://www.students.cs.ubc.ca/~cs-368/resources/sql-plus-setup.html#setting-up.
2. Use SSH to connect to remote.students.cs.ubc.ca using your CWL ID: ssh cwl@remote.students.cs.ubc.ca
3. use wget https://raw.githubusercontent.com/K2712/CPSC368/refs/heads/main/insert_statements.sql download the file to your account on the department server.
4. From the directory where you put insert_statements.sql, log in to SQL*Plus by typing the command: aqlplus ora_CWLid@stu
5. Once SQL*Plus is started, you will see the prompt SQL>. Please type start bookbiz.sql;
6. Please fun the following lines: <br>
SET COLSEP ',' <br>
SET PAGESIZE 0 <br>
SET TRIMSPOOL ON <br>
SET LINESIZE 1000 <br>
SET FEEDBACK OFF <br>
SET ECHO OFF <br>

SPOOL joined_data.csv <br>

(Please insert the sql query here from query.sql, specifically lines 2 to 13) <br>

SPOOL OFF <br>

7. You will now be able to view the file in your directory. Please download it to your local computer by typing this in your terminal (replace cwl with your cwl) scp cwl@remote.students.cs.ubc.ca:~/cs368/joined_data.csv .
