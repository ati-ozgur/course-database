## Cross Join 

- Cross join Cartesian multiply the rows in two tables

- For example, let's make a cross join on Student and Contact tables.

{{< include ../course-contents/tables/table-join-cross-example-tr.md >}}


- Results will 2*3 = 6 rows.
- Apart from Test data creation, it is normally unwanted.

Following cross join sql in Chinook, cartesian multiply Genre and MediaType tables and bring us 125 rows.

```sql
SELECT  G.Name,M.Name
FROM Genre G CROSS JOIN MediaType M;
```

- Genre 25 rows
- MediaType 5 rows


