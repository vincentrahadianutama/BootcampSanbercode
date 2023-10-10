mysql> select*from ITEMS;
+------+-------------+-----------------------------------+---------+-------+-------------+
| id   | name        | description                       | price   | stock | category_id |
+------+-------------+-----------------------------------+---------+-------+-------------+
|    1 | Sumsang b50 | hape keren dari merek sumsang     | 4000000 |   100 |           1 |
|    2 | Uniklooh    | baju keren dari brand ternama     |  500000 |    50 |           2 |
|    3 | IMHO Watch  | jam tangan anak yang jujur banget | 2000000 |    10 |           1 |
+------+-------------+-----------------------------------+---------+-------+-------------+
3 rows in set (0.00 sec)

mysql> update ITEMS set price=2500000 where id=1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from ITEMS;
+------+-------------+-----------------------------------+---------+-------+-------------+
| id   | name        | description                       | price   | stock | category_id |
+------+-------------+-----------------------------------+---------+-------+-------------+
|    1 | Sumsang b50 | hape keren dari merek sumsang     | 2500000 |   100 |           1 |
|    2 | Uniklooh    | baju keren dari brand ternama     |  500000 |    50 |           2 |
|    3 | IMHO Watch  | jam tangan anak yang jujur banget | 2000000 |    10 |           1 |
+------+-------------+-----------------------------------+---------+-------+-------------+
3 rows in set (0.00 sec)

mysql>