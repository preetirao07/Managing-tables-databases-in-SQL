create database startup_x
	with encoding 'UTF-8';

comment on database startup_x is 'This is my dream project.'

-- data types
--  	1. Numeric
-- 		2. strings
-- 		3. Date/time
-- 		4. BOOLEAN: TRUE FALSE NULL
-- 		5. enum: a value of a list of ordered values, eg: movie_rating, range: user-defined
-- 		6. array: stores a list of values, etc

-- zip codes & phone numbers: they don't have a numerical meaning, so stored as STRING
-- constraints: defined when table is created, and used to define rules for the data in a table
-- col constraints: NOT NULL, UNIQUE, DEFAULT, PRIMARY KEY, REFERENCES, CHECK
-- Table constraints: primary key, unique, check

-- PRIMARY KEY: one or multiple columns that uniquely identify each row in a table
-- FOREIGN KEY: a column (or multiple) that refers to the primary in another table

-- FOREIGN KEY doesn't need to be unique

create table team(
team_id serial primary key,
domain_name varchar(10) unique,
first_name varchar(50),
last_name varchar(50),
joining_date date,
city_id int references address(city_id))

create database startup_x
	with encoding 'UTF-8';

comment on database startup_x is 'This is my dream project.'

-- data types
--  	1. Numeric
-- 		2. strings
-- 		3. Date/time
-- 		4. BOOLEAN: TRUE FALSE NULL
-- 		5. enum: a value of a list of ordered values, eg: movie_rating, range: user-defined
-- 		6. array: stores a list of values, etc

-- zip codes & phone numbers: they don't have a numerical meaning, so stored as STRING
-- constraints: defined when table is created, and used to define rules for the data in a table
-- col constraints: NOT NULL, UNIQUE, DEFAULT, PRIMARY KEY, REFERENCES, CHECK
-- Table constraints: primary key, unique, check

-- PRIMARY KEY: one or multiple columns that uniquely identify each row in a table
-- FOREIGN KEY: a column (or multiple) that refers to the primary in another table

-- FOREIGN KEY doesn't need to be unique

create table team(
team_id serial primary key,
domain_name varchar(10) unique,
first_name varchar(50),
last_name varchar(50),
joining_date date,
city_id int references address(city_id))

create table team(
team_id serial primary key,
domain_name varchar(50) unique,
first_name varchar(50),
last_name varchar(50),
joining_date date,
city_id int)

-- insert data in table
insert into team(team_id, domain_name, first_name, last_name, joining_date,city_id)
values (1, 'analytics', 'Pretty', 'Yadav', '2025-07-09', 011)

select * from team

insert into team(team_id, domain_name, first_name, last_name, joining_date,city_id)
values (2, 'IT', 'Jiya', 'Rao', '2025-02-09', 001)

select * from team

-- ALTER TABLE: ADD, DELETE column | ADD, DROP constraints | RENAME column | ALTER data types

alter table team
rename column domain_name to domain


alter table team
DROP column domain

-- also to see if exist then delete
alter table team
DROP column if exists domain_name

alter table team
add column year_of_experience int

alter table team
add column if not exists year_of_experience int

alter table team
alter column domain type varchar(20) 

-- add data in rows of new empty column
UPDATE team SET year_of_experience = 2 WHERE team_id = 1
UPDATE team SET year_of_experience = 7 WHERE team_id = 2

select * from team

-- using when case function
UPDATE team
SET year_of_experience = CASE team_id
    WHEN 1 THEN 2
    WHEN 2 THEN 3
END
WHERE team_id IN (1, 2);

select * from team


-- change row data in a col
UPDATE team SET last_name = 'Gupta' WHERE team_id = 3
UPDATE team SET joining_date = '2025-08-02' WHERE team_id = 3
UPDATE team SET year_of_experience = '12' WHERE team_id = 4


-- DROP & TRUNCATE 
-- DROP is used to delete schema, table, column, etc.eg: deletes table
-- TRUNCATE only works on table, eg: deletes all data in table

create table company(
prodcut_name varchar(20), 
product_id int primary key, 
sold int)

select * from company

-- drop entire table

drop table company

-- insert rows
create table company(
prodcut_name varchar(20), 
product_id int primary key, 
sold int)

insert into company
values 
('templates', 1001, 38723625),
('pushies', 1002, 38722726)

select * from company

-- TRUNCATE table
truncate table company

-- or 
truncate company
