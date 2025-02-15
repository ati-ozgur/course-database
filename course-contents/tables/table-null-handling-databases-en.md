|                                          | SQLite | Oracle | MS-SQL |
|------------------------------------------|--------|--------|--------|
| Adding anything to null gives null       | Yes    | Yes    | Yes    |
| Multiplying null by zero gives null      | Yes    | Yes    | Yes    |
| nulls are distinct in a UNIQUE column    | Yes    | Yes    | No     |
| nulls are distinct in SELECT DISTINCT    | No     | No     | No     |
| nulls are distinct in a UNION            | No     | No     | No     |
| "CASE WHEN null THEN 1 ELSE 0 END" is 0? | Yes    | Yes    | Yes    |
| "null OR true" is true                   | Yes    | Yes    | Yes    |
| "not (null AND false)" is true           | Yes    | Yes    | Yes    |