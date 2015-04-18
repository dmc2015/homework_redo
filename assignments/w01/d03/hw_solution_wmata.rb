# What were some of the issues with your first iteration of AMAco WAMta?
  # It's hard to read, because there's a lot of text mixed in with the
  # if statements.
# Is there a lot of repeated code?
  # A little bit. We have to write 'puts' statements for each line's stations,
  # even though the idea is the same for each one
# How flexible is the code?
  # Not very. Each time we add a line, we have to modify the code in a few
  # places to make sure our program functions correctly.
# Where do you see room for improvement?
  # Pulling out the data (line information) from the logic
# What are the nouns for this problem domain?
# What real-world objects are we trying to represent through our code?
  # Subway system, lines, stations
# What is the purpose of collections in programming?
  # To manage sets of data (that can grow flexibly) in a structured manner.
# How can we use collections to represent our data?
  # We could model the subway as a hash of lines, where each line is a hash.

red_line = { menu_label: "(R)ed Line",
             stations: ["Takoma", "Union Station", "Gallery Place", "Metro Center", "Farragut North"] }

blue_line = { menu_label: "(B)lue Line",
           stations: ["Potomac Ave", "Smithsonian", "Metro Center", "Farragut West", "Arlington Cemetery"] }

silver_line = { menu_label: "(S)ilver Line",
           stations: ["Clarendon", "Court House", "Metro Center", "Capitol Heights", "Addison Rd"] }

lines = { "R" => red_line,
          "B" => blue_line,
          "S" => silver_line}


puts("***************************************************************************")
puts("*                                                                         *")
puts("* Welcome to AMAco's WAMTA                                                *")
puts("*                                                                         *")
puts("***************************************************************************")
puts("")
puts("Please read carefully, as our menu options have changed:")
puts("")

loop do
  puts("")
  puts("*********************************************************")
  puts("Press 1. to get info about train lines")
  puts("Press 2. to list stations for a specific line")
  puts("Press Q. to quit")
  puts("*********************************************************")
  puts("")

  menu_choice = gets().chomp()

  if menu_choice == "1"
    # Subway line info
    puts "The subway lines are:"
    lines.each do |name, line_info|
      puts line_info[:menu_label]
    end
  elsif menu_choice == "2"
    # Station info by line
    puts "Please choose a line to view stops:"

    # Display lines
    lines.each do |name, line|
      puts line[:menu_label]
    end

    lines = { "R" => red_line,
              "B" => blue_line,
              "S" => silver_line}


    user_line_choice = gets().chomp()
    line = lines[user_line_choice]
    if line
      puts "The stations are:"
      puts line[:stations].join("")
    else
      puts "bro do you even menu choice?"
    end
  elsif menu_choice == "Q"
    # Exit Program
    puts "Thanks for using AMAco WAMTA. Have a amaco-tastic day!"
    exit
  else
    puts "bro do you even menu choice?"
  end

end
