# 💄 Beauty Shop Database System

A fully documented relational database project for managing an online beauty products store. This system was developed as part of an academic project and includes conceptual design, relational modeling, SQL schema, and practical queries.

---

## 📌 Overview

This database manages operations related to:

- Products, categories, and brands
- Customer accounts and subscriptions
- Orders, reviews, and favorites
- Inventory tracking and order processing

It includes full normalization (1NF, 2NF, 3NF), ER diagrams, conceptual diagrams, relational schemas, and SQL implementations (DDL, DML, constraints, sequences, views, and queries).

---

## 🛠️ Technologies Used

- **Oracle SQL / PL/SQL**
- **SQL Developer**
- **ER diagrams** (conceptual & logical design)

---

## 📁 Project Structure

- ✅ **ER Model & Conceptual Design**  
  Real-world model, entity-relationship diagram, cardinality, and business logic

- ✅ **Relational Schemas & Normalization**  
  All entities normalized up to 3NF, with primary/foreign keys and constraints

- ✅ **SQL Implementation**  
  - Table creation scripts with constraints  
  - Sequences for primary keys  
  - Data insertion scripts  
  - Complex SQL queries (subqueries, joins, grouping, CASE, NVL, DECODE, WITH)  
  - Data manipulation operations (UPDATE, DELETE)

---

## 📊 Key Entities

- `PRODUCT`, `CATEGORY`, `BRAND`, `CLIENT`, `ORDER`, `REVIEW`, `SUBSCRIPTION`, `FAVORITE`
- Junction tables: `CREATES`, `CONTAINS`, `ADDS`

---

## 💡 Features

- Subscription system with customizable benefits
- Favorite list per customer
- Product reviews with rating and comments
- Advanced reporting queries (e.g., max order value per client, grouped order stats)
- Full referential integrity and business logic enforcement

---

## 🧪 Example Queries

- Find the highest order value per client  
- List all products with stock availability messages  
- Aggregate client spending compared to average  
- Subqueries in `FROM`, `HAVING`, and `SELECT` clauses  
- Conditional logic using `CASE`, `NVL`, `DECODE`  
- `WITH` clause and block queries for readability

---

## 📚 Documentation

The full project includes over 60 pages of documentation, covering:

- System description & rules  
- ER and conceptual diagrams  
- Full entity and relationship breakdown  
- SQL scripts for table creation, sequences, and insertions  
- Example data  
- Normalization examples  
- Query explanations with results







