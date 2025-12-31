create database sanka_seafood;

use sanka_seafood;

create table
    customer (
        customer_id int,
        name varchar(20),
        contact_no int,
        primary key (customer_id)
    );

create table
    orders (
        order_id int,
        order_date date,
        order_price decimal(10, 2),
        customer_id int,
        primary key (order_id),
        foreign key (customer_id) references customer (customer_id)
    );

create table
    order_detail (
        order_detail_id int,
        order_id int,
        item_id int,
        order_qty int,
        order_price decimal(10, 2),
        primary key (order_detail_id),
        foreign key (order_id) references orders (order_id)
    );

create table
    items (
        order_detail_id int,
        item_id int,
        item_name varchar(20),
        item_price decimal(10, 2),
        item_varieties varchar(20),
        primary key (item_id)
    );

create table
    employee (
        employee_id int auto_increment,
        employee_name varchar(20),
        employee_nic varchar(20),
        employee_age int,
        employee_salary decimal(10, 2),
        primary key (employee_id)
    );