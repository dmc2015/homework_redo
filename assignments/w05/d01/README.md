Homework 05-01

#### Learning Objectives

* Practice building a rails app from scratch
* Practice using rails generators to help create models
* Practice identifying the conventions for file/folder names, and database structure in rails
* Practice writing and running ActiveRecord Migrations

![amaco](http://www.juddkennedy.com/Images/amacoLogo.png)

In a fast paced world, the only way for a tech startup to stay relevant is to PIVOT...ALL THE TIME...SOOOO.....

#tWDIr

Your assignment tonight is to build a simple text/status-based social media app.

### Step 1
Create a new Rails app in your day folder. Make sure that your database is set to PostgreSQL.

### Step 2 - Models and Database
Generate a new migration for your 'tweeds' table. An individual tweed should have:
- an author
- content
- an image_url -> optional on tweed creation
- a timestamp

__Name your table columns like they are named above!__

Once you have defined your migration, create your database, run your migration, and define the model that will be associated with that table.

### Step 3 - Seed Data

After defining your routes and associated controller actions you should create a seed file for 10 random tweeds. Run the seed file and use `rails console` to check and make sure that your tweeds were properly seeded.

### Step 4 - Features

Define the Seven RESTful Routes for your app. Each of the routes should be directed towards an action on your controller.

Add controller actions and views as necessary to implement
the following user stories:

**User Stories**:
- As a user I want see all of the posted tweeds on the homepage, so that I can browse quickly and easily.
- As a user I want to be able to view an individual tweed, so that I can focus on one entry.
- As a user I want to be able to post a new tweed, so that I can share my thoughts with my friends.
- As a user I want to be able to edit a tweed, so that I can fix a mistake I made.
- As a user I want to be able to delete a tweed, so that future employers will not know what I did that one night.

Make sure that your app is easily navigable and you provide links to navigate between the different pages of your app. A user should easily be able to get back to the homepage from anywhere on the site, should not see an edit button on the main index page, etc.

- The index page should list all of the tweeds in the database.
- The show page should list a single tweed along with a link to edit the tweed.
- The edit page should display a form to edit the tweed and a button to delete a tweed.
- The new page should display a form to create a new tweed and should take the user to that new tweed when created.
- The delete button should remove the tweed from the database and take the user back to the index page.

### Bonus

Add commenting functionality so that users can comment on tweeds. Comments should have a timestamp, a name, and a body.
