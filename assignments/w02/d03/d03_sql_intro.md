# AMAco Realty! (Homework 02-03)

## Learning Objectives
- Practice using a relational database
- Practice using postgresql
- Practice writing a database schema
- Practice seeding a database using SQL
- Practice querying a database

![amaco](http://trinityceramic.com/wp-content/uploads/amaco.jpg)

AMAco is expanding! After our successes with the PDA and our WMATA redesign, we are ready to start investing in some brick and mortar assets. Introducing...

# AMAco Realty

Tonight your assignment is to lay down the foundation for AMAco's 'Next Big Thing'.

### Step 1 - Create a Database and Tables
From the command line create a database called `amaco_realty`. After you have created your database, define a schema for three tables in a `realty_schema.sql` file.

Think carefully about what data type to use for each column.

- Apartments
 - An Apartment should have:
   - a unique id (primary key)
   - an apartment number
   - number of bedrooms
   - number of bathrooms
   - an occupied status
   - a square footage
   - a price
- Offices
 - An office should have:
   - a unique id (primary key)
   - an office number
   - a number of floors
   - a company name
   - an occupied status
   - a square footage
   - a price
- Storefronts
 - A storefront should have:
   - a unique id (primary key)
   - an address
   - an owner
   - whether there is a kitchen or not
   - whether there is outdoor seating or not
   - an occupied status
   - a square footage
   - a price


### Step 2 - Load in your schema (tables)
From the command line, load up your database schema into your database
- Use `psql -d amaco_realty` to check to make sure that your tables exist, and that all of the appropriate columns have been added to your tables.

### Step 3 - Define a seed file and seed your database
In a SQL file, write commands that will add new entries into your apartment, office and storefront tables. You should create at least 6 entries for each table. Vary the attributes of each entry so no two are alike. From the command line, load this seed file into your database.

### Step 4 - Query!

In a text file write the SQL commands you would use to retrieve the following information from your database. Test each command in `psql` to make sure it is correct:


** APARTMENTS **
- The total number of apartments.
- The apartments where there is no tenant
- The apartments with 2 beds and 1 bath
- The apartments with more that 2 beds and more than 2 baths
- The apartments that cost less than $1000
- BONUS: The apartment with the most bedrooms

** OFFICES **
- All unoccupied offices
- All offices rented by 'Amaco Global Enterprises'
- The total number of unoccupied offices with 2+ floors
- BONUS: The names (just the names) of all of the companies in offices
- BONUS: The office with the lowest square footage
- BONUS: The office with the fewest number of bathrooms per floor (this one is tough!)

** STOREFRONTS **
- The storefronts that have kitchens
- The storefronts that aren't occupied, and that have more than 2300 sqft
- BONUS: Just the owner names and addresses of storefronts that are occupied
- BONUS: The storefront with the highest square footage (that also has outdoor seating)

__hint__: some of the commands we did not go over in class. W3 schools has an awesome guide for sql commands :wink:

Please include the code from your schema and seed in the text file at the very bottom.

# AFTER

If you're done early, it's probably good to go back and work on any HW you havne't finished (maybe Nurse.rb from Pokearena?) so you don't forget ruby!!
