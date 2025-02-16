# Hospital Management System

## Project Overview
The **Hospital Management System** is a database management project designed to efficiently manage patient records, employee details, doctor specializations, medical prescriptions, payments, and more. This system ensures structured data storage and retrieval for hospital operations.

## Project Details
- **Project Name:** Hospital Management System
- **Developers:**
  - **Tithi Rojivadiya** (Roll No: IT119, ID: 23ITUOS114)
  - **Hetvee Rabara** (Roll No: 114, ID: 23ITUOS109)
- **College:** Dharmsinh Desai University, Nadiad
- **Department:** Information Technology (IT)
- **Subject:** Database Management System (DBMS)

## Database Schema
The database consists of multiple tables to manage various aspects of hospital operations. Below is a brief description of each table:

### 1. `Patient`
Stores details of patients including their personal information.
- **Columns:** `patient_id`, `first_name`, `middle_name`, `last_name`, `address`, `age`, `dob`

### 2. `Pcontact_info`
Maintains patient contact details.
- **Columns:** `Patient_id` (Foreign Key), `contact`

### 3. `Employee`
Stores details of all hospital staff, including doctors and nurses.
- **Columns:** `employee_id`, `employee_name`, `salary`, `department`

### 4. `econtact`
Maintains employee contact details.
- **Columns:** `employee_id` (Foreign Key), `contact`

### 5. `Doctor`
Contains doctor-specific details such as specialization.
- **Columns:** `employee_id` (Foreign Key), `specialization`

### 6. `Nurse`
Stores details of nurses and their assigned shifts.
- **Columns:** `employee_id` (Foreign Key), `shift`

### 7. `Tablet`
Manages medical prescriptions assigned to patients.
- **Columns:** `Ref_no`, `tablet_name`, `dose`, `patient_id` (Foreign Key)

### 8. `side_effect`
Records potential side effects of prescribed medicines.
- **Columns:** `Ref_no` (Foreign Key), `effect`

### 9. `Payment`
Stores transaction details related to hospital services.
- **Columns:** `amount`, `Patient_id` (Foreign Key), `payment_mode`

### 10. `Treated_by`
Records which doctor is treating which patient.
- **Columns:** `t_id`, `Patient_id` (Foreign Key), `employee_id` (Foreign Key)

### 11. `Consumes`
Tracks the consumption of tablets by patients.
- **Columns:** `c_id`, `Patient_id` (Foreign Key), `employee_id` (Foreign Key)

## Technologies Used
- **Database Management System:** MySQL
- **Query Language:** SQL

## How to Run the Project
1. Install MySQL on your system.
2. Create the database using the following command:
   ```sql
   CREATE DATABASE Hospital;
   ```
3. Switch to the database:
   ```sql
   USE Hospital;
   ```
4. Execute the provided SQL script to create tables.
5. Insert sample data as required.
6. Run queries to manage and retrieve hospital records efficiently.

## Features
- Maintains patient and employee details.
- Manages doctor specialization and nurse shifts.
- Tracks patient prescriptions and medication effects.
- Supports payment transactions and different payment modes.
- Ensures structured data management for hospital services.

## Contributors
- **Tithi Rojivadiya** (23ITUOS114)
- **Hetvee Rabara** (23ITUOS109)

## License
This project is for academic purposes under **Dharmsinh Desai University, Nadiad**.

---
This **README.md** file provides a complete overview of the Hospital Management System project, making it easier for others to understand and use the database efficiently.

