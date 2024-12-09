using System;
using System.IO;
using Microsoft.Data.Sqlite;

namespace GuidInSqlite
{
    class Program
    {
        static void Main()
        {
            
            using (var connection = new SqliteConnection("Data Source=:memory:"))
            {
                connection.CreateFunction("newid", Guid.NewGuid); 
                connection.Open();

                var command = connection.CreateCommand();
                command.CommandText =
                @"
                    SELECT newid()
                ";
                var newId = command.ExecuteScalar();

                Console.WriteLine($"Your GUID is {newId}.");
            }
        }
    }
}
