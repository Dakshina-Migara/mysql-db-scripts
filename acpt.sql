create database ACPT;

use ACPT;

create table Student(
    nic varchar(20),
    name varchar(30),
    address varchar(50),
    age int,
    primary key(nic)
);

insert into Student(nic,name,address,age) values ('10','migara','pallama',23);

delete from Student where nic = '10';

update Student set name = 'sampath' where nic = '10';

select * from Student;

select * from student where nic = '10';