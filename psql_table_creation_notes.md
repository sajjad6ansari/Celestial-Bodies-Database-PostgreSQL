

# PostgreSQL Table Creation Notes

## Basic Commands

- **Log in to PostgreSQL**:  
  `psql --username=freecodecamp --dbname=postgres`

- **List databases**:  
  `\l`

- **Create a database**:  
  `CREATE DATABASE database_name;`

- **Connect to a database**:  
  `\c database_name`

- **List tables**:  
  `\d`

- **Create a table**:  
  `CREATE TABLE table_name();`

- **Add columns to a table**:  
  `ALTER TABLE table_name ADD COLUMN column_name DATATYPE;`

- **Remove columns from a table**:  
  `ALTER TABLE table_name DROP COLUMN column_name;`

- **Rename a column**:  
  `ALTER TABLE table_name RENAME COLUMN column_name TO new_name;`

- **Insert values into a table**:  
  `INSERT INTO table_name (column_1, column_2) VALUES (value1, value2);`

- **View data from a table**:  
  `SELECT * FROM table_name;`

- **Delete data from a table**:  
  `DELETE FROM table_name WHERE condition;`

- **Drop a table**:  
  `DROP TABLE table_name;`

- **Rename a database**:  
  `ALTER DATABASE database_name RENAME TO new_database_name;`

- **Add a primary key to a column**:  
  `ALTER TABLE table_name ADD PRIMARY KEY(column_name);`

- **Drop a constraint**:  
  `ALTER TABLE table_name DROP CONSTRAINT constraint_name;`

- **Add a UNIQUE constraint to a column**:  
  `ALTER TABLE table_name ADD UNIQUE(column_name);`

- **Make a column NOT NULL**:  
  `ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;`

## Common Data Types

- **Integer**: `INT`
- **Variable-length character**: `VARCHAR(n)` where `n` is the maximum length
- **Text**: `TEXT`
- **Numeric**: `NUMERIC(precision, scale)` where precision is the total number of digits and scale is the number of digits after the decimal point
- **Boolean**: `BOOLEAN` (can be `TRUE` or `FALSE`)

## Foreign Key Example

- **Adding a foreign key**:  
  `ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);`

- **Make foreign key column NOT NULL**:  
  `ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;`

## Additional Notes

- Columns such as `name` in each table should be of type `VARCHAR` and can be set as `NOT NULL`.
- The `SERIAL` type is used to automatically increment primary key columns.
- Tables should have at least three columns and must contain at least two columns that do not accept `NULL` values.
- Foreign keys should reference primary keys in other tables. For example, `star` references `galaxy`, `planet` references `star`, and `moon` references `planet`.
- At least one column from each table should be `UNIQUE`, such as the `name` column in all tables.

## Example for Adding a Weight Column (NUMERIC Type)

- **Adding a weight column**:  
  `ALTER TABLE more_info ADD COLUMN weight NUMERIC(4, 1);`  
  This allows for 4 digits, with 1 digit after the decimal point.

## Example Insert Query with Multiple Values

- **Inserting multiple rows**:  
  ```sql
  INSERT INTO characters (name, homeland, favorite_color) 
  VALUES ('Mario', 'Mushroom Kingdom', 'Red'),
         ('Luigi', 'Mushroom Kingdom', 'Green'),
         ('Peach', 'Mushroom Kingdom', 'Pink');
  ```

--- 
