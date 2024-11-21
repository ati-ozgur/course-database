--DROP TABLE Employee;
--DROP TABLE Salary;

CREATE TABLE IF NOT EXISTS Employee  (
    employee_id INT PRIMARY KEY,
    employee_name TEXT NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Salary   (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    department TEXT NOT NULL,
    salary_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO Employee (employee_id, employee_name, department) VALUES
(1, 'John Doe', 'Engineering'),
(2, 'Jane Smith', 'Marketing'),
(3, 'Emily Johnson', 'Sales'),
(4, 'Michael Brown', 'Human Resources'),
(5, 'Jessica Davis', 'Engineering'),
(6, 'Daniel Wilson', 'Marketing'),
(7, 'Laura Garcia', 'Sales'),
(8, 'James Martinez', 'Human Resources'),
(9, 'Sarah Rodriguez', 'Engineering'),
(10, 'David Lee', 'Marketing'),
(11, 'Linda Walker', 'Sales'),
(12, 'Robert Hall', 'Human Resources'),
(13, 'Mary Allen', 'Engineering'),
(14, 'William Young', 'Marketing'),
(15, 'Patricia Hernandez', 'Sales'),
(16, 'Thomas King', 'Human Resources'),
(17, 'Charles Wright', 'Engineering'),
(18, 'Barbara Scott', 'Marketing'),
(19, 'Joseph Green', 'Sales'),
(20, 'Susan Adams', 'Human Resources'),
(21, 'Daniel Nelson', 'Engineering'),
(22, 'Laura Carter', 'Marketing'),
(23, 'James Mitchell', 'Sales'),
(24, 'Nancy Perez', 'Human Resources'),
(25, 'Matthew Roberts', 'Engineering'),
(26, 'Sophia Turner', 'Marketing'),
(27, 'Christopher Phillips', 'Sales'),
(28, 'Megan Campbell', 'Human Resources'),
(29, 'Anthony Parker', 'Engineering'),
(30, 'Elizabeth Evans', 'Marketing'),
(31, 'Andrew Edwards', 'Sales'),
(32, 'Michelle Collins', 'Human Resources'),
(33, 'Joshua Stewart', 'Engineering'),
(34, 'Ashley Sanchez', 'Marketing'),
(35, 'Ryan Morris', 'Sales'),
(36, 'Jessica Rogers', 'Human Resources'),
(37, 'Jacob Reed', 'Engineering'),
(38, 'Victoria Cook', 'Marketing'),
(39, 'Ethan Morgan', 'Sales'),
(40, 'Olivia Bell',  'Human Resources');


INSERT INTO Salary (salary_id, employee_id, department, salary_amount) 
VALUES
(1,1,  'Engineering', abs(random() % 30000) + 60000 ),
(2,2,  'Marketing', abs(random() % 30000) + 60000 ),
(3,3,  'Sales', abs(random() % 30000) + 60000 ),
(4,4,  'Human Resources', abs(random() % 30000) + 60000 ),
(5,5,  'Engineering', abs(random() % 30000) + 60000 ),
(6,6,  'Marketing', abs(random() % 30000) + 60000 ),
(7,7,  'Sales', abs(random() % 30000) + 60000 ),
(8,8,  'Human Resources', abs(random() % 30000) + 60000 ),
(9,9,  'Engineering', abs(random() % 30000) + 60000 ),
(10, 10,  'Marketing', abs(random() % 30000) + 60000 ),
(11, 11,  'Sales', abs(random() % 30000) + 60000 ),
(12, 12,  'Human Resources', abs(random() % 30000) + 60000 ),
(13, 13,  'Engineering', abs(random() % 30000) + 60000 ),
(14, 14,  'Marketing', abs(random() % 30000) + 60000 ),
(15, 15,  'Sales', abs(random() % 30000) + 60000 ),
(16, 16,  'Human Resources', abs(random() % 30000) + 60000 ),
(17, 17,  'Engineering', abs(random() % 30000) + 60000 ),
(18, 18,  'Marketing', abs(random() % 30000) + 60000 ),
(19, 19,  'Sales', abs(random() % 30000) + 60000 ),
(20, 20,  'Human Resources', abs(random() % 30000) + 60000 ),
(21, 21,  'Engineering', abs(random() % 30000) + 60000 ),
(22, 22,  'Marketing', abs(random() % 30000) + 60000 ),
(23, 23,  'Sales', abs(random() % 30000) + 60000 ),
(24, 24,  'Human Resources', abs(random() % 30000) + 60000 ),
(25, 25,  'Engineering', abs(random() % 30000) + 60000 ),
(26, 26,  'Marketing', abs(random() % 30000) + 60000 ),
(27, 27,  'Sales', abs(random() % 30000) + 60000 ),
(28, 28,  'Human Resources', abs(random() % 30000) + 60000 ),
(29, 29,  'Engineering', abs(random() % 30000) + 60000 ),
(30, 30,  'Marketing', abs(random() % 30000) + 60000 ),
(31, 31,  'Sales', abs(random() % 30000) + 60000 ),
(32, 32,  'Human Resources', abs(random() % 30000) + 60000 ),
(33, 33,  'Engineering', abs(random() % 30000) + 60000 ),
(34, 34,  'Marketing', abs(random() % 30000) + 60000 ),
(35, 35,  'Sales', abs(random() % 30000) + 60000 ),
(36, 36,  'Human Resources', abs(random() % 30000) + 60000 ),
(37, 37,  'Engineering', abs(random() % 30000) + 60000 ),
(38, 38,  'Marketing', abs(random() % 30000) + 60000 ),
(39, 39,  'Sales', abs(random() % 30000) + 60000 ),
(40, 40,   'Human Resources', abs(random() % 30000) + 60000 );



