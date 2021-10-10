CREATE DATABASE bank_db;
CREATE SCHEMA bank_transactions_data;
SET search_path TO bank_transactions_data, public;

CREATE TABLE cuenta(
    numero PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    cedula INT NOT NULL,
    saldo DECIMAL(15,2) DEFAULT 0.0
);

CREATE TABLE consignacion(
    id SERIAL PRIMARY KEY,
    cuenta_fk INT NOT NULL,
    nota VARCHAR(100) DEFAULT '',
    monto DECIMAL(15,2) NOT NULL,
    fecha DATETIME DEFAULT NOW(),
    FOREIGN KEY (cuenta_fk) REFERENCES cuenta(numero)

);

CREATE TABLE departamento (
    dep_id SERIAL PRIMARY KEY,
    dep_nombre varchar(45) NOT NULL UNIQUE

)