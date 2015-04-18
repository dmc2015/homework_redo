# AMAco Realty Part 2 - Electric Boogaloo

## Learning Objectives
- Practice working with a relational database
- Practice defining relationships between tables
  - one to many
- Practice drawing ERD's
- Practice defining schemas and seeding a database

# AMAco Realty 2.0 - Rentals Tracker
You assignment tonight is to build a database representing AMAco's apartment buildings. These buildings will have apartments, tenants. The first step will be to draw ERD's in order to establish the relationships and help you build your schema. Think about what datatype would best represent the columns in your table. [LinkLove - PSQL datatypes](http://www.postgresql.org/docs/9.3/static/datatype.html)

## Step 1 - ERD

Draw the ERD for Apartments, Buildings, Tenants. What relationship exists between these tables? Which tables should have a foreign key?
__Take a picture of your ERD (from the whiteboard) and include it in your HW submission folder__

Hints:
* All relationships will be one-to-many (no one-to-one or many-to-many for this exercise).
* We have omitted the appropriate foreign keys from the attributes below, you'll need to add them your schema as appropriate (based on what you did in your ERD).



### Buildings
- a building has a unique ID
- a name
- an address
- a number of floors

### Apartments
- an apartment has a unique id
- a floor
- a name
- a price
- a square footage
- a number of bedrooms
- a number of bathrooms

### Tenants
- a tenant has a unique id
- a name
- an age
- a gender

## Step 2 - Create the DB / Schema
After establishing the proper relationships and drawing your ERDs create your database. 

Call your database: `amaco_realty_2`

Create your schema for all of the tables and load it into your database.

NOTE: DUE TO THE WAY THE SEED DATA WORKS, PLEASE DECLARE YOUR IDs TO BE LIKE THE FOLLOWING:
```sql
CREATE TABLE apartments(
  id INTEGER PRIMARY KEY,
  -- additional columns
);
```

NOTE THAT YOU SHOULD USE `INTEGER PRIMARY KEY` RATHER THAN `SERIAL PRIMARY KEY`.

## Step 3 - Import Seed Data

In your terminal, install the ffaker gem (not a typo):
```
$ gem install ffaker
```

1. We've provided you with a ruby file that **generates** a seed file for your database. Take a look at the ruby seed file that was given, read through the code first. Try to make sense of what it is doing. 
2. Run the ruby seed file in YOUR homework folder. 
3. Use the output to seed your database.

## Step 4 - Queries

Write queries to do the following:
* Retrieve all info on all tenants
* Retrieve the name, age, and gender of all tenants
* Retrieve all info on all tenants older than 65
* Geriatric Birthday! Update all tenants whose age is 90 to be 91
* Create one new tenant, put them in any apartment you want

#### Joins
* Find all tenants who live in an apartment that costs more than $2300
* Find all tenants who live in 2+ bedroom apartments.
* Find the address of all buildings with apartments that cost less than $1500
  * Modify the query to remove duplicates from the results
* Find all apartments in buildings with more than 4 floors.

#### Bonus

* Find the name of all tenants in apartments which are in buildings with less than 5 floors.


## Step 5 - Submit Work

Submit your the following:
* ERD (a photo)
* schema.sql (your schema)
* queries.sql (the queries you wrote)
