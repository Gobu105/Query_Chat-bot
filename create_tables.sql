CREATE DATABASE admission_chatbot;

USE admission_chatbot;

-- Create the registration table
CREATE TABLE registration (
    r_no VARCHAR(10) PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    passed_from_Modern_College_Pune_05 ENUM('Yes','No') NOT NULL,
    Gap ENUM('Yes','No') NOT NULL,
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
    r_no VARCHAR(10) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (r_no) REFERENCES registration(r_no)
);



CREATE TABLE faq (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255),
    answer TEXT
);



CREATE TABLE roaster(
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    caste VARCHAR(50) NOT NULL,
    seat_normal INT(20) NOT NULL,
    seat_in_house INT(20) NOT NULL
);
INSERT INTO roaster (caste,seat_normal,seat_in_house) VALUES
    ('OPEN',33,22),
    ('SC',11,8),
    ('ST',6,4),
    ('VJNT-A',2,2),
    ('NT-B-1',2,2),
    ('NT-C-2',3,2),
    ('NT-D-3',2,1),
    ('SBC',2,1),
    ('OBC',15,10),
    ('EWS',8,6);

CREATE TABLE fee(
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    fee INT(10) NOT NULL
);

CREATE TABLE subject(
    subject_id VARCHAR(20) PRIMARY KEY,
    complusory_name VARCHAR(50) NOT NULL,
    
);

CREATE TABLE subject1(
    subject_id VARCHAR(20) PRIMARY KEY,
    optional_name VARCHAR(50) NOT NULL,
);
