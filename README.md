## Getting Started
To get started with this project, follow these steps:

1. **Install PostgreSQL**: Ensure that you have PostgreSQL installed on your system.
2. **Set up a new database**: Create a new database in your PostgreSQL instance to host the data and analysis.
3. **Open the project in VS Code**: Create a new project in Visual Studio Code and navigate to the project directory.
4. **Clean the dataset**: Execute the `data_cleaning.sql` script in the `basic` folder to clean and preprocess the dataset.
5. **Import the dataset**: Use the SQL scripts in the `basic`, `intermediate`, and `advanced` folders to create the necessary tables and import the cleaned dataset.

## Dataset
The dataset used in this project is a CSV file named `hospital_data.csv`, which is stored in the `data` folder. This dataset contains the following information:

- Patient details (name, age, gender, blood type)
- Medical conditions
- Admission and discharge dates
- Billing information
- Medication and test details

## Data Cleaning
Before the analysis, the dataset was cleaned and preprocessed to ensure data integrity and accuracy. The following steps were taken:

1. **Handling Missing Values**:
   - Identified columns with missing values
   - Implemented appropriate strategies to handle missing data, such as:
     - Imputing numerical columns with the mean or median
     - Imputing categorical columns with the mode
     - Removing rows with extensive missing data

2. **Addressing Data Types**:
   - Ensured that all columns have the appropriate data types (e.g., integer, float, date, etc.)
   - Converted columns with incorrect data types to their proper formats

3. **Removing Duplicates**:
   - Identified and removed any duplicate records in the dataset
   - Implemented a unique identifier for each patient to prevent future duplicates

4. **Standardizing Formats**:
   - Ensured consistent formatting for columns like dates, names, and addresses
   - Converted all text to a consistent case (e.g., all uppercase or all lowercase)

5. **Handling Outliers**:
   - Identified and addressed any outliers in numerical columns
   - Decided on an appropriate strategy for handling outliers, such as:
     - Winsorizing the data
     - Removing extreme outliers
     - Replacing outliers with a more reasonable value

6. **Data Transformation**:
   - Created new derived columns based on the existing data (e.g., calculating age from date of birth)
   - Transformed columns to better suit the analysis (e.g., grouping continuous variables into categorical bins)

The data cleaning process was documented in a separate SQL script named `data_cleaning.sql`, which is located in the `basic` folder. This script should be executed before running the analysis queries.

## Analysis
The analysis is divided into three levels: basic, intermediate, and advanced. Each level has a corresponding SQL script in its respective folder.

### Basic Questions
The `basic_queries.sql` file contains SQL queries to answer the following questions:

1. What is the total number of patients in the dataset?
2. How many patients are male, and how many are female?
3. What are the distinct blood types present in the dataset?
4. How many patients have the blood type "O+"?
5. List the names of all patients who are over 60 years old.
6. Which patients were admitted on '2024-08-01'?
7. What is the average age of patients admitted to the hospital?
8. Which patients are currently admitted (i.e., have a null discharge date)?
9. How many patients are admitted to each hospital?
10. List all the patients whose medical condition includes the word 'chronic.'

### Intermediate Questions
The `intermediate_queries.sql` file contains SQL queries to answer the following questions:

1. Which doctor has admitted the most patients?
2. What is the total billing amount for each hospital?
3. Which insurance provider has the highest number of patients covered?
4. Find the patient with the highest billing amount.
5. What is the average billing amount for all patients?
6. Which patients have stayed in the hospital for more than 10 days?
7. List the medications for all patients who were admitted with 'Asthma.'
8. Which hospital has the highest average billing amount per patient?
9. How many patients have been admitted under each type of admission (e.g., emergency, elective)?
10. Which patients have had more than one admission (assuming there is a way to track multiple admissions)?

### Advanced Questions
The `advanced_queries.sql` file contains SQL queries to answer the following questions:

1. Rank all doctors by the total number of patients they have admitted.
2. Find patients who have the second-highest billing amount in their respective hospitals.
3. List all hospitals along with the total number of patients admitted, total billing amount, and average length of stay.
4. Identify patients who were admitted by "Dr. Smith" and discharged by another doctor.
5. What is the correlation between patient age and billing amount?
6. List patients who were admitted on weekends.
7. Which hospitals have the most frequent admissions for patients with 'Diabetes'?
8. Find patients who have been prescribed the same medication by multiple doctors.
9. What is the distribution of admission types across different hospitals?
10. Which patients have the most tests listed in their `Test Results`?

## Contributing
If you find any issues or have suggestions for improvements, please feel free to create a new issue or submit a pull request. Your contributions are greatly appreciated.
