-- Creating a database for electricity billing system
CREATE DATABASE IF NOT EXISTS Bill_system;

-- Use the created database
USE Bill_system;

-- Table to store customer information
CREATE TABLE IF NOT EXISTS new_customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    meter_no VARCHAR(20) UNIQUE,
    name VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    email VARCHAR(100),
    phone_no VARCHAR(15)
);

-- Table to store login/signup information
CREATE TABLE IF NOT EXISTS Signup (
    signup_id INT AUTO_INCREMENT PRIMARY KEY,
    meter_no VARCHAR(20) UNIQUE,
    username VARCHAR(50),
    name VARCHAR(100),
    password VARCHAR(50),
    usertype VARCHAR(20)
);

-- Table to store billing information
CREATE TABLE IF NOT EXISTS bill (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    meter_no VARCHAR(20),
    month VARCHAR(20),
    unit INT,
    total_bill DECIMAL(10, 2),
    status VARCHAR(20)
);

-- Insert sample data into new_customer table
INSERT INTO new_customer (meter_no, name, address, city, state, email, phone_no) VALUES
('1001', 'John Doe', '123 Main St', 'Anytown', 'AnyState', 'john@example.com', '123-456-7890'),
('1002', 'Alice Smith', '456 Elm St', 'Sometown', 'SomeState', 'alice@example.com', '987-654-3210'),
('1003', 'Bob Johnson', '789 Oak St', 'Othertown', 'OtherState', 'bob@example.com', '456-789-0123');

-- Insert sample data into Signup table
INSERT INTO Signup (meter_no, username, name, password, usertype) VALUES
('1001', 'john_user', 'John Doe', 'password123', 'Customer'),
('1002', 'alice_user', 'Alice Smith', 'alicepwd', 'Customer'),
('1003', 'bob_user', 'Bob Johnson', 'bobpassword', 'Customer');

-- Insert sample data into bill table
INSERT INTO bill (meter_no, month, unit, total_bill, status) VALUES
('1001', 'January', 500, 250.00, 'Paid'),
('1002', 'January', 320, 160.50, 'Unpaid'),
('1003', 'January', 450, 225.75, 'Paid');


