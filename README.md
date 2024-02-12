<!-- PROJECT TITLE -->
<h1 align="center">🌟 Delicious Delights 🍽️</h1>

<!-- PROJECT DESCRIPTION -->
<p align="center">
  Welcome to the **Delicious Delights** project! 🎉 This project provides a comprehensive database management and analysis solution for restaurants or cafes. It includes various database tables such as customer orders, menu items, employees, and sales, and allows for in-depth analysis using SQL queries.
</p>

<!-- TABLE OF CONTENTS -->
## 📋 Table of Contents

- [Project Description](#project-description)
- [Requirements](#requirements)
- [Database Schema](#database-schema)
- [SQL Queries](#sql-queries)
- [Diagrams](#diagrams)
- [Contribution](#contribution)
- [License](#license)

<!-- REQUIREMENTS -->
## 🌟 Requirements

To run this project, you'll need the following:

- A SQL database management system (e.g., MySQL, PostgreSQL, SQL Server)
- A SQL interface or environment to execute SQL queries
- Basic understanding of SQL syntax and database management concepts

<!-- DATABASE SCHEMA -->
## 🗂️ Database Schema

### Customers
| Column Name   | Data Type | Description           |
|---------------|-----------|-----------------------|
| cust_id       | INT       | Customer ID           |
| cust_name     | VARCHAR   | Customer Name         |
| phone_number  | VARCHAR   | Customer Phone Number |
| email         | VARCHAR   | Customer Email        |

### Orders
| Column Name   | Data Type | Description                |
|---------------|-----------|----------------------------|
| order_id      | INT       | Order ID                   |
| cust_id       | INT       | Customer ID                |
| order_time    | DATETIME  | Order Timestamp            |
| total_amount  | DECIMAL   | Total Order Amount         |

### OrderItems
| Column Name   | Data Type | Description             |
|---------------|-----------|-------------------------|
| order_item_id | INT       | Order Item ID           |
| order_id      | INT       | Order ID                |
| item_id       | INT       | Item ID                 |
| quantity      | INT       | Quantity of Item Ordered|

### MenuItems
| Column Name   | Data Type | Description        |
|---------------|-----------|--------------------|
| item_id       | INT       | Item ID            |
| item_name     | VARCHAR   | Item Name          |
| category      | VARCHAR   | Item Category      |
| price         | DECIMAL   | Item Price         |

<!-- SQL QUERIES -->
## 💻 SQL Queries

The project utilizes various SQL queries to perform data analysis and generate reports. Some of the key queries include:

- List of customer orders
- Details of a specific order
- Analysis of most ordered items
- Employee performance analysis
- Sales trends analysis

<!-- DIAGRAMS -->
## 📊 Diagrams

### Entity-Relationship Diagram (ERD)

![ERD Diagram](/diagrams/erd.png)

The ERD diagram illustrates the relationships between different tables in the database schema.

<!-- CONTRIBUTION -->
## 🤝 Contribution

Contributions to this project are welcome! If you'd like to contribute, please submit a Pull Request with your changes. For major changes, please open an Issue first to discuss the proposed changes.

<!-- LICENSE -->
## 📝 License

This project is licensed under the MIT License. For more information, see the [LICENSE](LICENSE) file.
