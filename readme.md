
# Celestial Bodies Database Project

This project involves creating a PostgreSQL database to model celestial bodies in the universe, including galaxies, stars, planets, moons, and constellations. The database will contain tables that store information about these entities, their characteristics, and their relationships.

## Database Structure

### Tables

- **galaxy**: Stores information about galaxies.
- **star**: Stores information about stars, with a foreign key reference to a galaxy.
- **planet**: Stores information about planets, with a foreign key reference to a star.
- **moon**: Stores information about moons, with a foreign key reference to a planet.
- **constellation**: Stores information about constellations, with a foreign key reference to a star.

### Column Ideas

- `name` (VARCHAR): The name of the entity (e.g., galaxy name, star name).
- `description` (TEXT): A description of the entity.
- `has_life` (BOOLEAN): Whether the planet or moon has life.
- `is_spherical` (BOOLEAN): Whether the celestial body is spherical.
- `age_in_millions_of_years` (NUMERIC): Age of the entity in millions of years.
- `planet_types` (VARCHAR): Types of planets (e.g., gas giant, terrestrial).
- `galaxy_types` (VARCHAR): Types of galaxies (e.g., spiral, elliptical).
- `distance_from_earth` (INT): Distance from Earth in light-years.

### Database Requirements

- **Primary Key**: Each table must have a primary key that automatically increments.
- **Foreign Keys**: 
  - `star` has a foreign key referencing the `galaxy` table.
  - `planet` has a foreign key referencing the `star` table.
  - `moon` has a foreign key referencing the `planet` table.
  - `constellation` has a foreign key referencing the `star` table.
- **Data Types**: 
  - Use `INT` for numeric columns that aren't primary or foreign keys.
  - Use `NUMERIC` for columns that store age or other precise numbers.
  - Use `TEXT` for longer textual data.
  - Use `BOOLEAN` for columns like `has_life` or `is_spherical`.

## Solution

### SQL Code

```sql
-- Create the galaxy table
CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    description TEXT,
    age_in_millions_of_years NUMERIC(10, 5),
    galaxy_types VARCHAR
);

-- Create the star table
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    description TEXT,
    age_in_millions_of_years NUMERIC(10, 5),
    is_spherical BOOLEAN,
    distance_from_earth INT
);

-- Add foreign key for star to galaxy table
ALTER TABLE star ADD COLUMN galaxy_id INT REFERENCES galaxy(galaxy_id);

-- Create the planet table
CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    description TEXT,
    age_in_millions_of_years NUMERIC(10, 5),
    planet_types VARCHAR,
    is_spherical BOOLEAN,
    has_life BOOLEAN,
    distance_from_earth INT
);

-- Add foreign key for planet to star table
ALTER TABLE planet ADD COLUMN star_id INT REFERENCES star(star_id);

-- Create the moon table
CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    description TEXT,
    age_in_millions_of_years NUMERIC(10, 5),
    is_spherical BOOLEAN,
    has_life BOOLEAN,
    distance_from_earth INT
);

-- Add foreign key for moon to planet table
ALTER TABLE moon ADD COLUMN planet_id INT REFERENCES planet(planet_id);

-- Create the constellation table
CREATE TABLE constellation (
    constellation_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE,
    description TEXT
);

-- Add foreign key for constellation to star table
ALTER TABLE constellation ADD COLUMN star_id INT REFERENCES star(star_id);
```

### Explanation of SQL Solution

1. **Galaxy Table**: 
   - Created a `galaxy` table with `galaxy_id` as the primary key, `name` as unique, and included columns like `description`, `age_in_millions_of_years`, and `galaxy_types`.

2. **Star Table**: 
   - Created a `star` table with `star_id` as the primary key and foreign key `galaxy_id` linking to the `galaxy` table. Included `name`, `description`, `is_spherical`, `distance_from_earth`, and `age_in_millions_of_years`.

3. **Planet Table**: 
   - Created a `planet` table with `planet_id` as the primary key and foreign key `star_id` linking to the `star` table. Columns include `name`, `description`, `has_life`, `planet_types`, `is_spherical`, and `distance_from_earth`.

4. **Moon Table**: 
   - Created a `moon` table with `moon_id` as the primary key and foreign key `planet_id` linking to the `planet` table. Columns include `name`, `description`, `has_life`, `is_spherical`, and `distance_from_earth`.

5. **Constellation Table**: 
   - Created a `constellation` table with `constellation_id` as the primary key and foreign key `star_id` linking to the `star` table. Columns include `name` and `description`.

---

## Setup Instructions

1. **Connect to PostgreSQL**:
   To get started, connect to PostgreSQL using the following command:
   ```bash
   psql --username=freecodecamp --dbname=postgres
   ```

2. **Create the Database**:
   After connecting to PostgreSQL, create the `universe` database with:
   ```sql
   CREATE DATABASE universe;
   ```

3. **Connect to the `universe` Database**:
   Connect to the `universe` database with:
   ```sql
   \c universe
   ```

4. **Create Tables**:
   Create the `galaxy`, `star`, `planet`, `moon`, and `constellation` tables by running the SQL code above.

5. **Populate Tables with Data**:
   Insert data into the tables to meet the specified minimum row requirements:
   - Galaxy: 6 rows
   - Star: 6 rows
   - Planet: 12 rows
   - Moon: 20 rows

---




## Conclusion

This project is  give us a comprehensive exercise in creating and managing a relational database using PostgreSQL. By completing this project, I gained experience in creating tables, defining relationships, and using SQL queries to interact with  data.


