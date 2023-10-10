
Setting environment for using XAMPP for Windows.
PC20@DESKTOP-0HO21GM c:\xampp
# cd mysql/bin

PC20@DESKTOP-0HO21GM c:\xampp\mysql\bin
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.28-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database myshop;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> CREATE TABLE USERS(id INTEGER AUTO INCREMENT PRIMARY KEY,name varchar(255),email varchar(255),password varchar(255));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> CREATE TABLE USERS(id INT,name varchar(255),email varchar(255),password varchar(255));
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| myshop             |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
| wordpress          |
+--------------------+
7 rows in set (0.013 sec)

MariaDB [(none)]> use myshop;
Database changed
MariaDB [myshop]> CREATE TABLE USERS(id INTEGER AUTO INCREMENT PRIMARY KEY,name varchar(255),email varchar(255),password varchar(255));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'AUTO INCREMENT PRIMARY KEY,name varchar(255),email varchar(255),password varc...' at line 1
MariaDB [myshop]> CREATE TABLE USERS(id INT,name varchar(255),email varchar(255),password varchar(255));
Query OK, 0 rows affected (0.005 sec)

MariaDB [myshop]> CREATE TABLE CATEGORIES(id INT,name varchar(255));
Query OK, 0 rows affected (0.006 sec)

MariaDB [myshop]> CREATE TABLE ITEMS(field type,id INT,name varchar(255),description varchar(255),price integer,stock integer,category_id integer(foreign key references id on categories));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id INT,name varchar(255),description varchar(255),price integer,stock integer...' at line 1
MariaDB [myshop]> CREATE TABLE ITEMS(field type,id INT,name varchar(255),description varchar(255),price integer,stock integer,category_id integer);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'id INT,name varchar(255),description varchar(255),price integer,stock integer...' at line 1
MariaDB [myshop]> CREATE TABLE ITEMS(id INT,name varchar(255),description varchar(255),price integer,stock integer,category_id integer);
Query OK, 0 rows affected (0.006 sec)

MariaDB [myshop]> CREATE TABLE USERS(id INT,name varchar(255),email varchar(255),password varchar(255))
    -> values(1,"John Doe","john@doe.com","john123");
ERROR 1050 (42S01): Table 'users' already exists
MariaDB [myshop]> INSERT IGNORE INTO USERS(id,name,email,password)
    -> VALUES(1,"John Doe","john@doe.com","john123");
Query OK, 1 row affected (0.027 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(1,gadget)
    -> values(2,cloth)
    -> values(3,men)
    -> values(4,women)
    -> values(5,branded);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'values(2,cloth)
values(3,men)
values(4,women)
values(5,branded)' at line 3
MariaDB [myshop]> values(1,gadget);
ERROR 4100 (HY000): Field reference 'gadget' can't be used in table value constructor
MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(1,gadget);
ERROR 1054 (42S22): Unknown column 'gadget' in 'field list'
MariaDB [myshop]> values(1,"gadget");
+---+--------+
| 1 | gadget |
+---+--------+
| 1 | gadget |
+---+--------+
1 row in set (0.000 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(2,"cloth")
    -> values(3,"men")
    -> values(4,"women")
    -> values(5,"branded");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'values(3,"men")
values(4,"women")
values(5,"branded")' at line 3
MariaDB [myshop]> values(2,"cloth");
+---+-------+
| 2 | cloth |
+---+-------+
| 2 | cloth |
+---+-------+
1 row in set (0.000 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(1,"gadget");
Query OK, 1 row affected (0.001 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(2,"cloth");
Query OK, 1 row affected (0.001 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(3,"men");
Query OK, 1 row affected (0.001 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(4,"women");
Query OK, 1 row affected (0.001 sec)

MariaDB [myshop]> INSERT IGNORE INTO CATEGORIES(id,name)
    -> values(5,"branded");
Query OK, 1 row affected (0.001 sec)

MariaDB [myshop]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [myshop]> select*from CATEGORIES;
+------+---------+
| id   | name    |
+------+---------+
|    1 | gadget  |
|    2 | cloth   |
|    3 | men     |
|    4 | women   |
|    5 | branded |
+------+---------+
5 rows in set (0.000 sec)

MariaDB [myshop]> select*from USERS;
+------+----------+--------------+----------+
| id   | name     | email        | password |
+------+----------+--------------+----------+
|    1 | John Doe | john@doe.com | john123  |
+------+----------+--------------+----------+
1 row in set (0.000 sec)

MariaDB [myshop]> INSERT IGNORE INTO USERS(id,name,email,password)
    -> values(2,"Jane Doe","jane@doe.com","jenita");
Query OK, 1 row affected (0.001 sec)

mysql> select*from USERS;
+------+----------+--------------+-----------+
| id   | name     | email        | password  |
+------+----------+--------------+-----------+
|    1 | John Doe | john@doe.com | john123   |
|    2 | Jane Doe | jane@doe.com | jenita123 |
+------+----------+--------------+-----------+
2 rows in set (0.00 sec)

mysql> INSERT IGNORE INTO ITEMS(id,description,price,stock,category_id)
    ->
    -> cd ..
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cd ..' at line 3
mysql> INSERT IGNORE INTO ITEMS(id,name,description,price,stock,category_id)
    -> values(1,"Sumsang b50","hape keren dari merek sumsang",4000000,100,1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT IGNORE INTO ITEMS(id,name,description,price,stock,category_id)
    -> values(2,"Uniklooh","baju keren dari brand ternama",500000,50,2)
    -> values(3,"IMHO Watch","jam tangan anak yang jujur banget",2000000,10,1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'values(3,"IMHO Watch","jam tangan anak yang jujur banget",2000000,10,1)' at line 3
mysql> INSERT IGNORE INTO ITEMS(id,name,description,price,stock,category_id)
    -> values(2,"Uniklooh","baju keren dari brand ternama",500000,50,2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT IGNORE INTO ITEMS(id,name,description,price,stock,category_id)
    -> values(3,"IMHO Watch","jam tangan anak yang jujur banget",2000000,10,1);
Query OK, 1 row affected (0.00 sec)

mysql> select*from ITEMS;
+------+-------------+-----------------------------------+---------+-------+-------------+
| id   | name        | description                       | price   | stock | category_id |
+------+-------------+-----------------------------------+---------+-------+-------------+
|    1 | Sumsang b50 | hape keren dari merek sumsang     | 4000000 |   100 |           1 |
|    2 | Uniklooh    | baju keren dari brand ternama     |  500000 |    50 |           2 |
|    3 | IMHO Watch  | jam tangan anak yang jujur banget | 2000000 |    10 |           1 |
+------+-------------+-----------------------------------+---------+-------+-------------+
3 rows in set (0.00 sec)

mysql>