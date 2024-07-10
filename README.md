# ReportMailer
Shift-Wise Status Report Email Notification System

#### Tech Stack: PostgreSQL, pgAdmin, Python

### Step 0 : Set Up PostgreSQL Database and pgAdmin:

Ensure PostgreSQL and pgAdmin are installed and configured on your system.

### Step 1 : `psql.py` file

Update Database Credentials:
- Open the `psql.py` file and update the database credentials (user, database_name, password) to match your PostgreSQL setup.
- Run the `psql.py` file.

  
### Step 2 : `shopDB.py` file
- Once done with the credential updation, run the `shopDB.py` file.
This file will create necessary tables to store production details, shifts, and more.
`shoDB.py` calls the functions from the files in `ReportMailer/models` Folder where each file defines the necessary primary and foreign keys to establish relationships between tables.

### Step 3 : Populating the database



### Step 4 : `emailtrigger.py` file

To achieve your goal of generating and sending an Excel sheet with specific columns from your database, we need to ensure the following:

Data Extraction: Extract the required data from the database.
Excel Generation: Generate the Excel sheet with the required columns.
Email Sending: Send the Excel sheet via email.

