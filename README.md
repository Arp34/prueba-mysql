# EcoMarket Relational Database

## Project Description

This project was developed as part of the Relational Databases performance assessment. The objective was to transform an unstructured Excel dataset into a normalized relational database for EcoMarket Riwi S.A.S.

The solution includes database design, normalization up to Third Normal Form (3NF), implementation in MySQL, data loading, SQL scripts, and business-oriented queries.

---

## Technologies

- MySQL
- SQL
- Draw.io
- Microsoft Excel

---

## Database Engine

- MySQL

---

## Normalization Process

The original dataset contained duplicated, inconsistent, and redundant information.

The normalization process included:

- Identifying duplicated customers, products, categories, cities, and distribution centers.
- Applying First Normal Form (1NF) by removing repeating groups.
- Applying Second Normal Form (2NF) by separating partial dependencies.
- Applying Third Normal Form (3NF) by removing transitive dependencies and creating independent entities.

The final model guarantees data consistency and reduces redundancy.

---

## Database Schema

The database was organized into normalized tables with the prefix **eco_**.

The implementation includes:

- Primary Keys (PK)
- Foreign Keys (FK)
- UNIQUE constraints
- NOT NULL constraints

---

## Entity Relationship Diagram

The Entity Relationship Diagram (ERD) was created using Draw.io and is included in this repository.

---

## Database Creation Instructions

1. Create the database.
2. Execute the DDL script.
3. Import the data using the provided SQL scripts.
4. Execute the DML scripts.
5. Run the SQL queries.

---

## Data Loading Instructions

The data was imported from the original Excel dataset after normalization using SQL scripts.

---

## SQL Query Explanation

The project includes SQL queries that answer business requirements such as:

- Available inventory by product.
- Order history by city.
- Total sales by category.
- Products with the lowest inventory.
- Customers with the highest number of orders.
- Inventory value by distribution center.

---

## Developer Information

**Developer:** Axel David Ruiz Polo
**GitHub Repository** https://github.com/Arp34/prueba-mysql.git

Riwi – Relational Databases Performance Assessment