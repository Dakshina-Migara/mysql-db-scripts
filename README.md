# SQL Learning Practice – ACPT Database

This repository contains SQL scripts that I created while learning basic SQL commands, including creating databases, tables, inserting data, updating records, deleting records, and querying data.  

---

## Database: ACPT

The main database in this project is called `ACPT`.

---

## Table: `Student`

The `Student` table is used to store student information. The table structure is as follows:

| Column  | Data Type   | Description           |
|---------|------------|----------------------|
| nic     | VARCHAR(20)| National ID (Primary Key) |
| name    | VARCHAR(30)| Student name         |
| address | VARCHAR(50)| Student address      |
| age     | INT        | Student age          |

---

## SQL Operations Practiced

### 1. Creating the Table
```sql
CREATE TABLE Student(
    nic VARCHAR(20),
    name VARCHAR(30),
    address VARCHAR(50),
    age INT,
    PRIMARY KEY(nic)
);
