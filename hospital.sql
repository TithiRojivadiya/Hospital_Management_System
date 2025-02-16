CREATE DATABASE Hospital;

CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(255),
    age INT,
    dob DATE
);

CREATE TABLE Pcontact_info(
	Patient_id INT PRIMARY KEY,
	FOREIGN KEY (Patient_id) references Patient(Patient_id),
    contact numeric(10,0)
);

CREATE TABLE Employee(
	employee_id INT PRIMARY KEY,
    employee_name varchar(50),
    salary numeric(6,2),
    department varchar(30)
);

CREATE TABLE econtact(
	employee_id INT PRIMARY KEY,
    foreign key (employee_id) references Employee(employee_id),
    contact numeric(10,0)
);

create TABLE Doctor(
	employee_id INT PRIMARY KEY,
    foreign key (employee_id) references Employee(employee_id),
    specialization varchar(30)
);

create table Nurse(
	employee_id INT PRIMARY KEY,
    foreign key (employee_id) references Employee(employee_id),
    shift varchar(10) default 'DAY'
);

create table Tablet(
	Ref_no NUMERIC(3,0) PRIMARY KEY,
    tablet_name varchar(30),
    dose INT DEFAULT 1,
    patient_id INT,
    foreign key (patient_id)references Patient(patient_id)
);

create table side_effect(
	Ref_no NUMERIC(3,0) PRIMARY KEY,
    foreign key (Ref_no) references Tablet(Ref_no),
    effect varchar(50)
);

create table Payment(
	amount NUMERIC(5,2),
    Patient_id INT,
    payment_mode varchar(20),
    PRIMARY KEY(amount,Patient_id),
    foreign key(Patient_id) references Patient(Patient_id)
);

create table Treated_by(
	t_id INT PRIMARY KEY,
    Patient_id INT,
	FOREIGN KEY (Patient_id) references Patient(Patient_id),
    employee_id INT,
    foreign key (employee_id) references Employee(employee_id)
);

create table Consumes(
	c_id INT PRIMARY KEY,
    Patient_id INT,
	FOREIGN KEY (Patient_id) references Patient(Patient_id),
    employee_id INT,
    foreign key (employee_id) references Employee(employee_id)
);

INSERT INTO Patient (patient_id, first_name, middle_name, last_name, address, age, dob) VALUES
(1, 'Rahul', 'Kumar', 'Sharma', 'Delhi, India', 32, '1992-05-12'),
(2, 'Sneha', 'Ramesh', 'Iyer', 'Mumbai, India', 28, '1996-08-20'),
(3, 'Amit', 'Rajesh', 'Patel', 'Ahmedabad, India', 45, '1979-11-05'),
(4, 'Pooja', 'Anil', 'Verma', 'Pune, India', 36, '1988-07-18'),
(5, 'Vikram', 'Sunil', 'Chopra', 'Chandigarh, India', 50, '1974-02-25'),
(6, 'Kiran', 'Mahesh', 'Reddy', 'Hyderabad, India', 29, '1995-09-10'),
(7, 'Neha', 'Vikrant', 'Joshi', 'Bangalore, India', 40, '1984-03-22'),
(8, 'Suraj', 'Omprakash', 'Yadav', 'Patna, India', 31, '1993-06-15'),
(9, 'Anjali', 'Harish', 'Gupta', 'Jaipur, India', 27, '1997-12-03'),
(10, 'Arjun', 'Satish', 'Deshmukh', 'Nagpur, India', 35, '1989-10-09');

INSERT INTO Pcontact_info (Patient_id, contact) VALUES
(1, 9876543210),
(2, 8765432109),
(3, 7654321098),
(4, 6543210987),
(5, 5432109876),
(6, 4321098765),
(7, 3210987654),
(8, 2109876543),
(9, 1098765432),
(10, 9988776655);

INSERT INTO Employee (employee_id, employee_name, salary, department) VALUES
(101, 'Dr. Suresh Nair', 9999.99, 'Cardiology'),
(102, 'Dr. Meera Menon', 8500.50, 'Neurology'),
(103, 'Dr. Ajay Kapoor', 9200.75, 'Orthopedics'),
(104, 'Dr. Sunita Gupta', 8900.60, 'Pediatrics'),
(105, 'Dr. Rajeev Malhotra', 8800.80, 'Radiology'),
(106, 'Sister Priya Das', 4000.00, 'Nursing'),
(107, 'Sister Anil Kumar', 4200.90, 'Nursing'),
(108, 'Dr. Ramesh Joshi', 9300.40, 'General Medicine'),
(109, 'Dr. Komal Jain', 8700.55, 'Dermatology'),
(110, 'Dr. Sidharth Mishra', 9100.20, 'Surgery');

INSERT INTO econtact (employee_id, contact) VALUES
(101, 9990011122),
(102, 8880022233),
(103, 7770033344),
(104, 6660044455),
(105, 5550055566),
(106, 4440066677),
(107, 3330077788),
(108, 2220088899),
(109, 1110099900),
(110, 9090909090);

INSERT INTO Doctor (employee_id, specialization) VALUES
(101, 'Cardiologist'),
(102, 'Neurologist'),
(103, 'Orthopedic'),
(104, 'Pediatrician'),
(105, 'Radiologist'),
(108, 'General Physician'),
(109, 'Dermatologist'),
(110, 'Surgeon');

INSERT INTO Nurse (employee_id, shift) VALUES
(106, 'DAY'),
(107, 'NIGHT');

INSERT INTO Tablet (Ref_no, tablet_name, dose, patient_id) VALUES
(101, 'Paracetamol', 1, 1),
(102, 'Aspirin', 2, 2),
(103, 'Ibuprofen', 1, 3),
(104, 'Amoxicillin', 1, 4),
(105, 'Cetirizine', 1, 5),
(106, 'Ranitidine', 2, 6),
(107, 'Metformin', 1, 7),
(108, 'Losartan', 1, 8),
(109, 'Atorvastatin', 2, 9),
(110, 'Omeprazole', 1, 10);

INSERT INTO side_effect (Ref_no, effect) VALUES
(101, 'Nausea'),
(102, 'Dizziness'),
(103, 'Stomach Pain'),
(104, 'Skin Rash'),
(105, 'Drowsiness'),
(106, 'Headache'),
(107, 'Dry Mouth'),
(108, 'Fatigue'),
(109, 'Muscle Pain'),
(110, 'Heartburn');

INSERT INTO Payment (amount, Patient_id, payment_mode) VALUES
(500.00, 1, 'DEBIT'),
(950.00, 2, 'DEBIT'),
(750.00, 3, 'UPI'),
(900.00, 4, 'CASH'),
(650.00, 5, 'DEBIT'),
(850.00, 6, 'CASH'),
(700.00, 7, 'DEBIT'),
(600.00, 8, 'CASH'),
(999.99, 9, 'UPI'),
(880.00, 10, 'UPI');

INSERT INTO Treated_by (t_id, Patient_id, employee_id) VALUES
(201, 1, 101),
(202, 2, 102),
(203, 3, 103),
(204, 4, 104),
(205, 5, 105),
(206, 6, 108),
(207, 7, 109),
(208, 8, 110),
(209, 9, 101),
(210, 10, 102);

INSERT INTO Consumes (c_id, Patient_id, employee_id) VALUES
(301, 1, 101),
(302, 2, 102),
(303, 3, 103),
(304, 4, 104),
(305, 5, 105),
(306, 6, 108),
(307, 7, 109),
(308, 8, 110),
(309, 9, 101),
(310, 10, 102);