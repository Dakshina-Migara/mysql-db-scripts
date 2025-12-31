-- show the databases in here
show databases;

-- create a database
create database afsd_11;

-- ee database eka ethulata yanna
use afsd_11;

-- tables penwanna
show tables;

-- create karaganna table ekak
create table
    customers (
        id int,
        name varchar(100),
        email varchar(100),
        salary decimal(10, 2),
        primary key (id)
    );

-- show what are in the customers table
desc customers;

-- select all customers
-- all columns select
select
    *
from
    customers;

-- customer kenek insert karanawa
insert into
    customers (id, name, email, salary)
values
    (1, "Alice Smith", "alice@gmail.com", 3000.00);

insert into
    customers (id, name, email, salary)
values
    (2, "Dakshina Migara", "migara@gmail.com", 3004.00);

insert into
    customers (id, name, email, salary)
values
    (3, "Bob Smith", "bob@gmail.com", 3550.00);

insert into
    customers (id, name, email, salary)
values
    (4, "fdw Smith", "bob@gmail.com", 355000.00);

insert into
    customers (id, name, email, salary)
VALUES
    (
        5,
        "Alice Johnson",
        "alice.johnson@example.com",
        72000.00
    );

insert into
    customers (id, name, email, salary)
VALUES
    (
        6,
        "Michael Brown",
        "michael.brown@example.com",
        54000.00
    );

insert into
    customers (id, name, email, salary)
VALUES
    (
        7,
        "Sarah Williams",
        "sarah.williams@example.com",
        86000.00
    );

insert into
    customers (id, name, email, salary)
VALUES
    (
        8,
        "David Miller",
        "david.miller@example.com",
        91000.00
    );

INSERT INTO
    customers (id, name, email, salary)
VALUES
    (
        9,
        "Emily Davis",
        "emily.davis@example.com",
        63000.00
    );

INSERT INTO
    customers (id, name, email, salary)
VALUES
    (
        10,
        "James Wilson",
        "james.wilson@example.com",
        78000.00
    );

INSERT INTO
    customers (id, name, email, salary)
VALUES
    (
        11,
        "Sophia Martinez",
        "sophia.martinez@example.com",
        69000.00
    );

INSERT INTO
    customers (id, name, email, salary)
VALUES
    (
        12,
        "Daniel Anderson",
        "daniel.anderson@example.com",
        83000.00
    );

INSERT INTO
    customers (id, name, email, salary)
VALUES
    (
        13,
        "Olivia Thomas",
        "olivia.thomas@example.com",
        57500.00
    );

INSERT INTO
    customers (id, name, email, salary)
VALUES
    (
        14,
        "Henry Garcia",
        "henry.garcia@example.com",
        99000.00
    );

-- ona column witharak ganne
select
    name,
    email
from
    customers;

-- adala id eka thiyena kena witharak delete karaganne
delete from customers
where
    id = 2;

-- update query
-- dapu data ekak update karanne meken
update customers
set
    salary = 40000.00,
    name = "migara"
where
    id = 1;

-- adala id eka thiyena kena witharak select karaganne
select
    *
from
    customers
where
    id = 1;

-- adala id eke id ekai namai witharak 
select
    id,
    name
from
    customers
where
    id = 1;

-- AND operator
select
    *
from
    customers
where
    name = "Dakshina Migara"
    AND salary = 3004.00;

-- OR operator
select
    *
from
    customers
where
    id = 1
    OR name = "migara";

-- find customer who has a salary than 1200.00
select
    *
from
    customers
where
    salary > 120000.00;

-- like query ---> name
select
    *
from
    customers
where
    name like '%A%';

-- aggegrate function--> count , sum , avg , min , max
-- Find the lowest salary in the table
select
    min(salary)
from
    customers;

-- find the highest salary in the table
select
    max(salary)
from
    customers;

-- Find the total number of rows in the table
select
    count(*)
from
    customers;

-- Return the sum of all
select
    sum(salary)
from
    customers;

-- Find the average salary of all customers:
select
    avg(salary)
from
    customers;

-- how many ones have salary more than 25000.00
select
    count(salary)
from
    customers
where
    salary > 25000.00;

-- as eken karanne ekata namak dana
select
    count(salary) as salary_count
from
    customers
where
    salary > 25000.00;

-- limit , order by
-- limit eken karanne kochcharak select karanna onada kiyana eka 
-- offset eken karanne select karana limit eka ki weni index eke idalada kiayana eka
select
    *
from
    customers
limit
    3;

select
    *
from
    customers
limit
    3
offset
    3;

select
    *
from
    customers
where
    salary > 250000.00
limit
    3;

-- order by
-- mekedi wenne adu eke idala wedi ekata salary eka hedenawa
select
    *
from
    customers
order by
    salary;

-- salary eka wedi eke idala adu ekata ganna desc use karanawa
select
    *
from
    customers
order by
    salary desc;

-- alter query meken puluwan update karanna table eke onama ekak
alter table customers add tel_no int (17);

--foreign key example
create table
    orders (
        order_id int,
        order_date date,
        customer_id int,
        primary key (order_id),
        foreign key (customer_id) references customers (id)
    );