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
    seat_normal INT(20) NOT NULL ,
    seat_in_house VARCHAR(20) NOT NULL
);
INSERT INTO roaster (caste,seat_normal,seat_in_house) VALUES
    ('OPEN',33,'22'),
    ('SC',11,'8'),
    ('ST',6,'4'),
    ('VJNT-A',2,'2'),
    ('NT-B-1',2,'2'),
    ('NT-C-2',3,'2'),
    ('NT-D-3',2,'1'),
    ('SBC',2,'1'),
    ('OBC',15,'10'),
    ('EWS',8,'6'),
    ('DEFENCE',7,'NOT-APPLICABLE'),
    ('DISABILITY',4,'NOT-APPLICABLE'),
    ('ORPHAN',1,'NOT-APPLICABLE');

CREATE TABLE fee(
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    fee INT(10) NOT NULL
);
INSERT INTO fee (category,fee) VALUES
    ('OPEN',57690),
    ('SC',24955),
    ('ST',24955),
    ('EBC',46790),
    ('OBC',57690),
    ('NT',57690),
    ('OBC',57690),
    ('SBC',57690),
    ('EWS',57690),
    ('SEBC',57690),
    ('ARMY',57690),
    ('SAARC-SELF',88590),
    ('OUT-OF-STATE',88590),
    ('FOREIGNER',118990);

CREATE TABLE sem1_c(
    subject_id VARCHAR(30)  PRIMARY KEY,
    complusory_name VARCHAR(100) NOT NULL
    
    );
INSERT INTO sem1_c (subject_id,complusory_name) VALUES 
    ('24CsCmpU1101','PROGRAMMING in C'),
    ('24CsCmpU1102','LAB COURSE ON C PROGRAMMING'),
    ('24CsCmpU1201','DISCRETE MATHEMATICS'),
    ('24CsCmpU1202','LAB COURSE ON DISCRETE MATHEMATICS'),
    ('24CsCmpU1301','BASICS OF ELECTRONICS COMPONENTS AND CIRCUITS'),
    ('24CsCmpU1302','LAB COURSE ON BASICS OF ELECTRONICS COMPONENTS AND CIRCUITS'),
    ('24CsCmpU1901','GENERIC IKS'),
    ('24CsCmpU1401','COMPUTER FUNDAMENTALS'),
    ('24CsCmpU1601','LAB COURSE ON STATISTICAL ANALYSIS USING R PROGRAMMING I'),
    ('24CsCmpU1701','MIL-I (HINDI) OR MIL-I(MARATHI)'),
    ('24CsCmpU1702','MIL-I(MARATHI)'),
    ('24CsCmpU1801','ENVIROMENTAL SCIENCE');
CREATE TABLE sem2_c(
    subject_id VARCHAR(30)  PRIMARY KEY,
    complusory_name VARCHAR(100) NOT NULL
    
    );
INSERT INTO sem2_c (subject_id,complusory_name) VALUES
    ('24CsCmpU2101','ADVANCE C PROGRAMMING'),
    ('24CsCmpU2102','LAB COURSE ON ADVANCE C PROGRAMMING'),
    ('24CsMatU2201','MATRIX THEORY'),
    ('24CsMatU2202','LAB COURSE ON MATRIX THEORY'),
    ('24CsEleU2301','BASICS OF ELECTRONIC INSTRMENTATION'),
    ('24CsEleU2302','LAB COURSE ON BASICS OF ELECTRONIC INSTRMENTATION'),
    ('24CsCopU2401','DIGITAL MARKETING'),
    ('24CsStaU2601','LAB COURSE ON STATISTICAL ANALYSIS USING R PROGRAMMING II'),
    ('24CsCopU2703','ENGLISH COMMUNICATION SKILLS I'),
    ('24CsCopU2801','DEMOCRACY,ELECTION AND GOVERNANCE'),
    ('24CsCopU2001','PHYSICAL EDUCATION'),
    ('24CsCopU2011','CULTURAL ACTIVITIES'),
    ('24CsCopU2021','NSS'),
    ('24CsCopU2031','NCC'),
    ('24CsCopU2041','FINE ARTS'),
    ('24CsCopU2051','APPLIED ARTS'),
    ('24CsCopU2061','VISUAL ARTS'),
    ('24CsCopU2071','PERFORMING ARTS');

CREATE TABLE sem1_o(
    subject_id INT(20) AUTO_INCREMENT PRIMARY KEY,
    optional_name VARCHAR(50) NOT NULL,
    );
INSERT INTO sem1_o (optional_name) VALUES
    ('FUNDAMENTALS OF ECONOMICS'),
    ('PROFESSIONAL ENGLISH SKILLS I'),
    ('GEOGRAPHY OF TOURISM I'),
    ('ANUWAD KAUSHALYA I : SAHITIK ANUWAD'),
    ('GERMAN FOR BEGINNERS I'),
    ('HERITAGE STUDIES'),
    ('MARATHI PRAMAN LEKHAN'),
    ('MUSIC-S OF INDIA'),
    ('CONSTITUTIONAL BODIES OF INDIA'),
    ('STRESS MANAGEMENT'),
    ('PRARAMBHIK SANSKRIT'),
    ('BUSSINESS CORRESPONDENCE'),
    ('PRODUCTION AND OPERATION MANAGEMENT'),
    ('LAB COURSE OF FASHION DRAPING'),
    ('FUNDAMENTALS OF TRADE AND COMMERCE I');

CREATE TABLE sem2_o(
    subject_id INT(20) AUTO_INCREMENT PRIMARY KEY,
    optional_name VARCHAR(50) NOT NULL,
    );
INSERT INTO sem2_o (optional_name) VALUES
    ('INTRODUCTION TO MICRO ECONOMICS'),
    ('PROFESSIONAL ENGLISH SKILLS II'),
    ('GEOGRAPHY OF TOURISM II'),
    ('GERMAN FOR BEGINNERS II'),
    ('ANUWAD KAUSHALYA II : SAHITETAR ANUWAD'),
    ('HISTORY FOR POLICY MARKERS AND ADMINISTRATIONS'),
    ('MUDRISHODHAN'),
    ('INTRODUCTION OF INDIAN INSTRUMENTS'),
    ('ETHICS IN GOVERNANCE'),
    ('NURTURING EMOMTIONAL INTELLIGENCE'),
    ('VYAKARAN PRAVESH'),
    ('PERSONALITY DEVELOPMENT'),
    ('INTERNATIONAL ECONOMICS'),
    ('LAB COURSE ON HAND EMBROIDERY'),
    ('FUNDAMENTALS OF TRADE AND COMMERCE II');

