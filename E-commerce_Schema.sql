/* 
   Project: E-commerce Database Architecture
   Description: Professional DDL for scalable e-commerce systems.
*/

CREATE TABLE Dim_Customer (
    Customer_Key INT PRIMARY KEY IDENTITY(1,1),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email_Address VARCHAR(100) UNIQUE,
    Region VARCHAR(50)
);

CREATE TABLE Fact_Sales (
    Sales_Key INT PRIMARY KEY IDENTITY(1,1),
    Customer_Key INT FOREIGN KEY REFERENCES Dim_Customer(Customer_Key),
    Order_Date DATE,
    Total_Amount DECIMAL(18, 2),
    Status VARCHAR(20) -- e.g., 'Completed', 'Cancelled', 'Failed'
);