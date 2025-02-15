|                                          | SQLite | Oracle | MS-SQL |
|------------------------------------------|--------|--------|--------|
| Null'a herhangi bir şey eklemek null verir       | Yes    | Yes    | Yes    |
| Null'u sıfırla çarpmak null'ı verir      | Yes    | Yes    | Yes    |
| null'lar UNIQUE sütununda farklıdır    | Yes    | Yes    | **No**     |
| null'lar SELECT DISTINCT'te farklıdır    | No     | No     | No     |
| null'lar UNION'da farklıdır           | No     | No     | No     |
| "CASE WHEN null THEN 1 ELSE 0 END" 0 mıdır? | Yes    | Yes    | Yes    |
| "null OR true"  doğru mudur?                   | Yes    | Yes    | Yes    |
| "not (null AND false)" doğru mudur?            | Yes    | Yes    | Yes    |