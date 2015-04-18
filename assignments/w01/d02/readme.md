__Homework 01-01__

## AMAco Consulting & WMATA

AMAco needs your help! WMATA is having trouble with their normal application that interfaces with their customers, and they've hired us to help.

Everything's crashed and we need YOU to create a command line based ruby app to help out!

### Learning Objectives

- Practice creating a command line interface using ruby
- Practice using strings, numbers and user-input
- Practice using Control Flow structures
  - Conditional statements
  - Loops
- Practice using git for version control

#### Commit 1

Start by prompting the user to input a letter representing a train line.
Start with `R, B, or S`

The user's input should be stored in a variable and a statement echoing what the user selected should be printed to the console.

```
Enter a train line (R, B, or S):
> R
You selected the red train!
```

#### Commit 2

**COMMIT YOUR CODE BEFORE STARTING**

Change your code so that when a user inputs a train line, they are returned a string with the stations for that particular train line

```
Enter a train line (R, B, or S):
> R
You selected the R train!
Takoma | Union Station | Gallery Place | Metro Center | Farragut North
```

Here are the stops for each line:
* Red - Takoma, Union Station, Gallery Place, Metro Center, Farragut North
* Blue - Potomac Ave, Smithsonian, Metro Center, Farragut West, Arlington Cemetery
* Silver - Clarendon, Court House, Metro Center, Capitol Heights, Addison Rd

#### Commit 3

**COMMIT YOUR CODE BEFORE STARTING**

Change your code so that when a user inputs a train line, they are still returned a string with that train line's stations, but the program does not exit.
- Create a loop that will continually prompt the user for a train line.
- If a user inputs a line or word that does not exist then `No stations there yet` should be printed to the console
- The loop should stop only if the user inputs the word `quit`.

**PRO-TIP** if you run into an infinite loop press `CONTROL + C` to exit the program

#### Commit 4

**COMMIT YOUR CODE BEFORE STARTING**

Change your code so that there is a menu of three options:
- List All Lines
  - if a user selects this option then a list of all the train lines should be printed to the console
- See Stations
  - if a user selects this option then they should be prompted to enter a train line
  - the stations belonging to that train line should be printed to the console
- Quit
  - exit the program

The program should loop back to the menu each time.

```
********************** Menu ***************************
** Select an option: **
1. List all lines
2. See stations for a single line
Q. Quit
>2
*******************************************************
** Please select a train line to view its stations: **
The ( R )ed line
The ( B )lue line
The ( S )ilver line
> B
*******************************************************
** The Blue Line **
Potomac Ave | Smithsonian | Metro Center | Farragut West | Arlington Cemetery
```

# Submitting this Assignment

**COMMIT YOUR CODE**

When you have completed this assignment copy your completed code and email me a gist by **midnight**!

[What's a gist?](https://gist.github.com/) Just create a new gist and email the link to `adam.bray@ga.co`


#### BONUS
- have the user be able to choose two stops on the same line, and the program spits out the number of spots between.
