mysql> select*from USERS where id=1;
+------+----------+--------------+----------+
| id   | name     | email        | password |
+------+----------+--------------+----------+
|    1 | John Doe | john@doe.com | john123  |
+------+----------+--------------+----------+
1 row in set (0.00 sec)

mysql> select id=2 from USERS;
+------+
| id=2 |
+------+
|    0 |
|    1 |
+------+
2 rows in set (0.00 sec)

mysql> select*from USERS where password=jenita123;
ERROR 1054 (42S22): Unknown column 'jenita123' in 'where clause'
mysql> select*from USERS where password="jenita123";
+------+----------+--------------+-----------+
| id   | name     | email        | password  |
+------+----------+--------------+-----------+
|    2 | Jane Doe | jane@doe.com | jenita123 |
+------+----------+--------------+-----------+
1 row in set (0.00 sec)

mysql> select*from ITEMS where name="sang";
Empty set (0.00 sec)

mysql> select*from ITEMS where name="Watch";
Empty set (0.00 sec)

mysql> select*from ITEMS where id=2;
+------+----------+-------------------------------+--------+-------+-------------+
| id   | name     | description                   | price  | stock | category_id |
+------+----------+-------------------------------+--------+-------+-------------+
|    2 | Uniklooh | baju keren dari brand ternama | 500000 |    50 |           2 |
+------+----------+-------------------------------+--------+-------+-------------+
1 row in set (0.00 sec)

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