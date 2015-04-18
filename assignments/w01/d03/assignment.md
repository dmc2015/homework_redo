__Homework 01-02__

### Learning Objectives

- Practice creating a command line interface using ruby
- Practice problem modeling
- Practice using collections to store our data in ruby
  - Arrays
  - Hashes
- Practice iterating through arrays

# AMAco & WMATA beta 2.0

Your assignment for this evening is to re-build the HAMta system. Mayor Bill de Blastoise thought our first iteration was good, but there's always room for improvement!

#### Step 1 - Modeling

Before you begin to code I would like you to model this problem domain.
In a gist jot down some thoughts about the questions below:
- What were some of the issues with your first iteration of HAMta?
  - Is there a lot of repeated code?
  - How flexible is the code?
  - Where do you see room for improvement?
- What are the nouns for this problem domain? What real-world objects are we trying to represent through our code?
- What is the purpose of collections in programming?
- How can we use collections to represent our data?

#### Step 2 - Code

The specs for this assignment are the same as the final step from yesterday's assignment. This time however, you should utilize the collections that we learned about today to model your data and make your code more versatile. Use your modeling from Step 1 to guide your code.

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

#### Bonus - Add more functionality

- When the program begins a menu should printed displaying:
  - An option to list all train lines
  - An option to view the stations for a single train line
  - **An option to add another train line to the system**
  - An option to quit `quit - Quit this program`
  - A statement asking the user to make their selection
- When the user selects the third option (add) the following should occur:
  - A statement asking the user to input the name for the name of the train line
  - A statement asking the user to input the stations for that particular train line
    - When the user inputs stations separated by spaces they should be added as stops for that train line
  - The printed output should be the newly entered train line labeled as a train
  - The second printed output should be the stations for that new train line
  - The menu should be printed and the program should not exit
- The added train line and stations should be accessible in the proceeding iterations of the loop.


_hint_: Look at the ruby docs for useful string, array and hash methods. Also, ask your friend google, reading through the ruby docs at this point can be daunting. This would be a great chance to practice question phrasing


#### Step 3 - Reading
__Mandatory__
- [Ruby Style Guide](https://github.com/styleguide/ruby) - First step towards writing beautiful code
  - focus on sections: Coding Style, Syntax, Naming, Collections, Strings
- [Array review](http://www.tutorialspoint.com/ruby/ruby_arrays.htm)
- [Hash review](http://www.tutorialspoint.com/ruby/ruby_hashes.htm)


### Submitting the assignment
Follow the same guidelines as last night. One gist with multiple files for each step of the assignment
