CREATE DATABASE clinica;

CREATE TABLE medicos (
    crm VARCHAR(6) PRIMARY KEY,
    name VARCHAR(30),
    address VARCHAR(l00),
    phone VARCHAR(14),
    specialty VARCHAR(30)
);

CREATE TABLE pacientes (
    cpf CHAR(14) PRIMARY KEY,
    name VARCHAR(30),
    address VARCHAR(l00),
    phone VARCHAR(14)
);

CREATE TABLE consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME,
    notes TEXT,

    FOREIGN KEY (doctor_crm) REFERENCES medicos(crm),  
    FOREIGN KEY (pacient_cpf) REFERENCES pacientes(cpf) 
);

CREATE TABLE exames (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    results TEXT,

    FOREIGN KEY (pacient_cpf) REFERENCES pacientes(cpf) 
);