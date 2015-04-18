__Homework 01-01__

### Learning Objectives

- Practice creating a command line interface using Ruby
- Practice using strings, numbers and user-input
- Practice using Control Flow structures
  - Conditional statements
  - Loops

# AMAco & WMATA

Your assignment for this evening is to build a simple command-line Ruby program modeling the MTA system. Try to follow each section step by step.

#### Step 1 - Display a menu and echo user input

- When the program begins a menu should printed displaying:
  - A list of three trains - `The (R)ed Line, (B)lue Line, or (S)ilver Line`
  - A statement asking the user to make their selection
- When the user enters a train line:
  - The printed output should contain the user's selection labeled as a train
- The program should exit

__Create a new gist file with the code from this step called Step 1__

#### Step 2 - Display a menu and results based on user input

- When the program begins a menu should printed displaying:
  - A list of three trains - `The (R)ed Line, (B)lue Line, or (S)ilver Line`
  - A statement asking the user to make their selection
- When the user enters: `R`
  - The printed output should contain the user's selection labeled as a train
  - The second printed output should contain the following:
    - 'Takoma'
    - 'Union Station'
    - 'Gallery Place'
    - 'Metro Center'
    - 'Farragut North'
- When the user enters: `B`
  - The printed output should contain the user's selection labeled as a train
  - The second printed output should contain the following:
    - 'Potomac Ave'
    - 'Smithsonian'
    - 'Metro Center'
    - 'Farragut West'
    - 'Arlington Cemetery'
- When the user enters `S`
  - The printed output should contain the user's selection labeled as a train
  - The second printed output should contain the following:
    - 'Clarendon'
    - 'Court House'
    - 'Metro Center'
    - 'Capitol Heights'
    - 'Addison Rd'

- A Thank You message should be printed
- The program should exit

__Create a new gist file with the code from this step called Step 2__

#### Step 3 - Display a menu, which loops after responding to user input

- When the program begins a menu should printed displaying:
  - A list of three trains - `The (R)ed Line, (B)lue Line, or (S)ilver Line`
  - A second option to quit the program
  - A statement asking the user to make their selection
- When the user enters: `R`
  - The printed output should contain the user's selection labeled as a train
  - The second printed output should contain the following:
    - 'Takoma'
    - 'Union Station'
    - 'Gallery Place'
    - 'Metro Center'
    - 'Farragut North'
  - The menu should be printed and the program should not exit
- When the user enters: `B`
  - The printed output should contain the user's selection labeled as a train
  - The second printed output should contain the following:
    - 'Potomac Ave'
    - 'Smithsonian'
    - 'Metro Center'
    - 'Farragut West'
    - 'Arlington Cemetery'
  - The menu should be printed and the program should not exit
- When the user enters `S`
  - The printed output should contain the user's selection labeled as a train
  - The second printed output should contain the following:
    - 'Clarendon'
    - 'Court House'
    - 'Metro Center'
    - 'Capitol Heights'
    - 'Addison Rd'
  - The menu should be printed and the program should not exit
- When the user enters `quit`
  - A Thank You message should be printed
  - The program should exit

__Create a new gist file with the code from this step called Step 3__

#### Step 4 - Display a looping menu with multiple options

- When the program begins a menu should printed displaying:
  - An option to list all train lines
  - An option to view the stations for a single train line
  - A third option to quit `quit - Quit this program`
  - A statement asking the user to make their selection
- When the user enters the first option
  - A list of three trains - `The (R)ed Line, (B)lue Line, or (S)ilver Line`
  - The menu should be displayed again and the program should not exit
- When the user enters the second option a menu should be displayed with:
  - A list of three trains - `The (R)ed Line, (B)lue Line, or (S)ilver Line`
  - A statement asking the user to make their selection
  - When the user enters: `R`
    - The printed output should contain the user's selection labeled as a train
    - The second printed output should contain the following:
      - 'Takoma'
      - 'Union Station'
      - 'Gallery Place'
      - 'Metro Center'
      - 'Farragut North'
    - The menu should be printed and the program should not exit
  - When the user enters: `B`
    - The printed output should contain the user's selection labeled as a train
    - The second printed output should contain the following:
      - 'Potomac Ave'
      - 'Smithsonian'
      - 'Metro Center'
      - 'Farragut West'
      - 'Arlington Cemetery'
    - The menu should be printed and the program should not exit
  - When the user enters `S`
    - The printed output should contain the user's selection labeled as a train
    - The second printed output should contain the following:
      - 'Clarendon'
      - 'Court House'
      - 'Metro Center'
      - 'Capitol Heights'
      - 'Addison Rd'
    - The menu should be printed and the program should not exit
- When the user enters `quit`
  - A Thank You message should be printed
  - The program should exit

__Create a new gist file with the code from this step called Step 4__

---
### Submitting this Assignment

To submit this assignment we will be using Gists on Github.
[What's a gist you ask??](https://help.github.com/articles/creating-gists)
When you have completed this assignment email me your gist by **midnight**! It should have the code from all 4 of the steps.
Link Love <mckenneth@generalassemb.ly>
