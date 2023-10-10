
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

MariaDB [myshop]>