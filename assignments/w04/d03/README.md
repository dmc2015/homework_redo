# Homework - Tun.r  (w04d03)

One of AMAco's dreams is to have one of our apps purchased by Apple. Inspired by
their recent purchase of Beats by Dre®, we've decided the way to success is to
make a web app for browsing our music (and hopefully playing it evenually!).

Today your goal is to build Tun.r 1.0 using Sinatra. Tun.r 1.0 will support two
models, songs and artists (an artists **has_many** songs). We will support partial
CRUD functionality.

## Step 1 - Setup the App / DB for Artists

* Create a folder for your app (call it 'tunr')
* Generate a Gemfile (`bundle init` is your friend!)
  * Add the correct gems to your gemfile (we'll use AR, postgres, sinatra and sinatra-contrib)
  * Don't forget to install gems using bundler!
* Generate your schema:
  * **Artists:**
    * id
    * name        (text)
    * photo_url   (text)
    * nationality (text)
* Create a database ('tunr_db'), and load your schema into the DB

## Step 2 - Define your models / seed your DB

* Define a 'connection.rb' file to connect your app to your DB.
* Define your AR model for an artist (make sure to put it in your 'models' folder)
* Write a seed file to create at least least 3 artists
  * note that the photo_url should be a string that points to a photo of the
    artist on the web, e.g. `http://assets.rollingstone.com/assets/images/video/beyonce-answers-tough-adorable-questions-from-kid-president-20130820/beyonce-306-1377006730.jpg`
* Use pry to verify that your seed script worked properly

## Step 3 - Sinatra routes/views for artists

Now that our data model is set up, create an app.rb, which loads sinatra, and other
required files (refer back to our in-class exercise)

Next, define routes and views for the following features. Don't forget to make a
layout file like we made in class.

For artists, a user should be able to:
* GET '/artists' (index route)
  * this should display a list of all artists (just their names)
  * each artist name should include a link to view more info about that artist
* GET '/artists/:id' (show route)
  * view detailed information on a specific artist
  * this page should include their name, nationality, and also show their image

## Step 4 - Update schema / seed script to add songs

* Update your schema to add a songs table:
  * **Songs:**
    * id
    * title       (text)
    * album       (text)
    * price       (integer)
    * don't forget any foreign key(s) we need for relationships
* Load your updated schema into the DB
* Update your seed script. Make sure you're creating at least 3 artists, and at
  least 5 songs per artist (and that they are correctly associated using
  has_many/belongs_to)

## Step 5 - Sinatra routes/views for songs

Next, define routes and views for the following features.

For songs, a user should be able to:
* GET '/songs' (index route)
  * this should display a list of all songs (formatted like: "Artist Name - Song Title", e.g. "Drake - Energy")
  * each song title should include a link to view more info about that song
* GET '/songs/:id' (show route)
  * view detailed information on a specific song
  * this page should include the artist name, song title, album, and price.
  * The artists name should link to the show page for the artist.

## Step 6 - Update views for artists

Update the 'show' view for artists, to include the list of all songs associated
with that artist. For each song, display it's title and album.

Also, make the title a link to the show view for that song.

## Step 7 - Add 'Create/Update/Destroy' routes for artists

Add a Create/Update/Destroy routes to artists:
* POST '/artists'
  * This route should create a new artist from the user params
  * return a simple html success message (feel free to use an ERB view if you'd like)
* PUT '/artists/:id'
  * This route should update an existing artist (by ID) from the user params
  * return a simple html success message (feel free to use an ERB view if you'd like)
* DELETE '/artists/:id'
  * This route should delete an existing artist
  * return a simple html success message (feel free to use an ERB view if you'd like)

TEST your routes using postman.

## Step 8 - Read about HTML Forms

Read the chapter on forms on Shay Howe's [Learn to Code HTML & CSS](http://learn.shayhowe.com/html-css/building-forms/). This is a fantastic
reference on HTML & CSS in general.

You ONLY need to read the first 4 sections:

* Initializing a Form
* Text Fields & Textareas
* Multiple Choice Inputs & Menus
* Form Buttons

## BONUS - Play around with adding a form to Tun.r

We don't expect your form to work. Just try applying what you know about forms
to make one new route / view.

* GET '/artists/new' (the 'new' route)
  * this should render a view that contains a form with the fields to create a
    new artist

Don't worry about what happens when you submit this form. In other words, don't
worry about making a POST route (aka the 'create' route).
