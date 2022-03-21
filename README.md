# SQL
___
This repository contains homeworks that were made during the author's course by Vadim Ksendzov.
# Homework_1
The first homework will show simple statements:

:small_orange_diamond: SELECT is used to select  columns of a table and has the following syntax:
```sql
    - for all columns
    SELECT * FROM table_name 
    - for certain column
    SELECT column_name from table_name 
```

:small_orange_diamond: SELECT and WHERE to select table rows:
The simplest conditions are specified using the comparison and equality operators (<, >, =), as well as the IS keyword. There can be several conditions, then they are listed using the AND keyword. Row selection queries have the following syntax:
```sql
SELECT column_name FROM table_name WHERE CONDITION
```

:small_orange_diamond:  Using SELECT and IN, AND, OR, BETWEEN, LIKE predicates:
 Queries with IN, OR, BETWEEN predicates have the following syntax:
```sql
SELECT column_name FROM table_name WHERE VALUE (IN, OR, BETWEEN) 
```
# Homework_2

The second homework will describe the creation and filling of information tables.

:small_orange_diamond: CREATE TABLE is a keyword that tells the database system what you want to do.

The CREATE TABLE statement is followed by a unique table name or identifier. Example:
```sql
CREATE TABLE CUSTOMERS(
  ID   INT              NOT NULL,
  NAME VARCHAR (20)     NOT NULL,
  AGE  INT              NOT NULL,
  ADDRESS  CHAR (25) ,
  SALARY   DECIMAL (18, 2),       
  PRIMARY KEY (ID)
);
```
:small_orange_diamond: The SQL INSERT INTO Statement

Specify both the column names and the values to be inserted:
```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...)
```
:small_orange_diamond: Adding a new column:
```sql
alter table table_name
add column column_name int;
```
:small_orange_diamond: Rename a column
```sql
alter table table_name 
rename column column_name to new_column_name;
```
:small_orange_diamond: Change the type of column:
```sql
alter table table_name 
alter column column_name type varchar (30) using column_name :: varchar(30);
```
:small_orange_diamond: The SQL UPDATE Statement

The UPDATE statement is used to modify the existing records in a table.

update table_name set column_name = 'some_text' where condition (e.g.id = int);

:small_orange_diamond: The command to view all tables in the database
```sql
SELECT * FROM information_schema.tables WHERE table_schema = 'public';
```
