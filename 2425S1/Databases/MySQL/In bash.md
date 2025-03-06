# Inloggen

```bash
mysql -u [gebruikersnaam] -p
# Na dit commando wordt je gevraagd om je wachtwoord in te voeren

# Of met direct wachtwoord (geen spatie tussen -p en [wachtwoord]):
mysql -u [gebruikersnaam] -p[wachtwoord]

# Of met direct wachtwoord en database naam:
mysql -u [gebruikersnaam] -p[wachtwoord] [databasenaam]


```

## Voorbeeld:

```bash
mysql -u root -p1213 imdb
```

# SQL commandos ingeven

Gewoon de sql commando ingeven en *afsluiten met* **;** .

## Voorbeeld

```sql
SHOW DABASES;

USE planten;

SHOW TABLES;

CREATE TABLE student ( studentno int NOT NULL AUTO_INCREMENT PRIMARY KEY, lastname char(30) NOT NULL, firstname char(30) NOT NULL, gender char(1) NOT NULL );

SHOW COLUMNS FROM student;
```

# Scripts

## Scripts uitvoeren

```bash
mysql -u [gebruiker] -p < create_students.sql
```

## Aanmaken scripts

```bash

sudo nano create_students.sql

```

## Voorbeelden van scripts

```sql

-- create_students.sql
-- Commentaar wordt aangegeven met twee streepjes

-- Verwijder de tabel als die al bestaat
DROP TABLE IF EXISTS students;

-- Maak de tabel aan
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Voeg enkele voorbeeldgegevens toe
INSERT INTO students (first_name, last_name, email, date_of_birth) VALUES 
('Jan', 'Janssen', 'jan@example.com', '2000-01-15'),
('Maria', 'de Vries', 'maria@example.com', '1999-05-22'),
('Piet', 'Bakker', 'piet@example.com', '2001-11-30');

-- Voeg een extra voorwaardelijke INSERT toe
INSERT INTO students (first_name, last_name, email, date_of_birth) 
SELECT 'Emma', 'Smit', 'emma@example.com', '2002-03-10'
WHERE NOT EXISTS (
    SELECT 1 FROM students WHERE email = 'emma@example.com'
);

```

```sql
-- create_school_database.sql

-- Maak database aan (als die nog niet bestaat)
CREATE DATABASE IF NOT EXISTS school_management;
USE school_management;

-- Docenten tabel
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(100)
);

-- Cursussen tabel
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    credits INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Inschrijvingen tabel
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Voorbeeldgegevens invoegen
INSERT INTO teachers (first_name, last_name, department) VALUES 
('Anne', 'de Jong', 'Wiskunde'),
('Mark', 'Visser', 'Informatica');

INSERT INTO courses (course_name, teacher_id, credits) VALUES
('Inleiding Programmeren', 2, 6),
('Gevorderde Algebra', 1, 5);
```