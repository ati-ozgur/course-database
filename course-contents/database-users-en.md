## Database users

Since sqlite is file based database, file permission in the operating system manages the access.
Sqlite user is also admin user and this is unavoidable and by design.

But for the other database servers, following apply.

1. Direct connection to production database should be limited to DBAs.
2. Do not connect with admin user 
	- SQL Server sa
	- Oracle SYS 
3. Programs should connect with their application users.
4. Even DBAs should connect with non-admin user for non-administrative tasks. 
This is unfortunately rarely followed. 
5. In oracle, schema owner is also a user. The user has every right in the schema. Instead of using schema owners, application users should be used.

### create application user example

- oracle
- sql server