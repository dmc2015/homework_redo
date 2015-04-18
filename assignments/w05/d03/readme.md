# Blog++ - w05 d02

![blog](http://searchengineland.com/figz/wp-content/seloads/2014/01/blog-featured.jpg)

## Outline

Tonight, we're going to build on our blog by:

a) Making sure we have at least a functional post model.
b) Adding user authentication
c) Associating posts with users (one-to-many, as you would expect)

## Notes

Depending on how far you got last night, you may also have a 3rd model like tags or categories or comments, etc. That's fine. You'll eventually have to have a 3rd model, but it doesn't have to be finished tonight.

You **don't** need to worry about *authorization*, i.e. you don't need to limit who can edit or delete posts based on 'ownership'.

## DEPLOY!!!

Try to deploy to heroku. If it worked, share the URL with us. If it didn't, write a short comment explaining what errors you got.

## Requirements

Here are the requirements:

The app:
* has to be written in rails
* has to have at least 2 models
* one of those models must be something like a post
  * the post must have a title and body (other attrs optional)
* you should be able to create, edit, and delete posts
* you should have user authentication that supports multiple users
* users should have_many :posts
* the user's show page should include a list of all of their posts.