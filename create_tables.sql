CREATE DATABASE admission_chatbot;

USE admission_chatbot;

-- Create the registration table
CREATE TABLE registration (
    r_no VARCHAR(10) PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);

-- Insert some example valid data for registration
INSERT INTO registration (r_no, firstname, lastname) VALUES 
('2023000001', 'Aarav', 'Sharma'),
('2023000002', 'Vihaan', 'Patel'),
('2023000003', 'Ishaan', 'Reddy'),
('2023000004', 'Mira', 'Singh'),
('2023000005', 'Anika', 'Chopra'),
('2023000006', 'Dev', 'Joshi'),
('2023000007', 'Riya', 'Mehta'),
('2023000008', 'Arjun', 'Nair'),
('2023000009', 'Sneha', 'Gupta'),
('2023000010', 'Kabir', 'Malhotra');


-- Create the login table
CREATE TABLE login (
    r_no VARCHAR(10),
    password VARCHAR(255),
    FOREIGN KEY (r_no) REFERENCES registration(r_no)
);



CREATE TABLE faq (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255),
    answer TEXT
);

-- Example insertion of questions and answers
INSERT INTO faq (question, answer) VALUES 
('What is the admission process?', 'The admission process involves submitting the application form, followed by an interview.'),
('What is the last date for admission?', 'The last date for admission is September 30th.');
('What is the duration of this course?', 'The duration of this course is typically 3 to 4 years, depending on the program.'),
('What are the subjects?', 'The subjects vary based on the program but include core subjects related to the field of study.'),
('What is the examination pattern?', 'The examination pattern includes internal assessments, end-semester exams, and practical evaluations.'),
('Does this course follow NEP pattern?', 'Yes, the course structure is aligned with the National Education Policy (NEP).'),
('What is the cut-off?', 'The cut-off varies each year based on the merit of students and category-wise reservations.'),
('What are the dates of merit rounds?', 'The merit round dates are typically announced after the submission deadline.'),
('What is the fee structure?', 'The fee structure depends on the course and category. Please refer to the admission page.'),
('Are there any procedures for installments?', 'Yes, installment options are available based on the institution’s policy.'),
('What is the fee structure for caste?', 'The fee structure varies for different categories. Please refer to the official fee chart.'),
('What is the fee structure for out-of-state students?', 'Out-of-state students may have a different fee structure.'),
('Is there any scholarship?', 'Yes, scholarships are available based on merit and financial need.'),
('What is the last day to complete the admission process?', 'The last date for completing the admission process is mentioned in the official notice.'),
('What documents are required?', 'The required documents typically include mark sheets, ID proof, and transfer certificate for OS students.'),
('Does it have an army quota?', 'Yes, a certain percentage of seats are reserved for candidates under the army quota.'),
('What is the total number of seats allotted for the program?', 'The total number of seats varies by program.'),
('Does it have a management quota?', 'Yes, there are a few seats reserved under the management quota.'),
('What is the commencement date?', 'The commencement date is typically announced after the admission process is complete.');
