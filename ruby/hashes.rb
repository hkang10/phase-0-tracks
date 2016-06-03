#Pseudocode
=begin
Design a program that allows the interior designer
to enter the details of a given client:
clients name
clients age
number of children
decor theme
budget

Step 1: Create an empty hash to allow user info to be inputted
Step 2:prompt the designer/user to input information asked
Step 3: Print collected information out for confirmation
Step 4: Write a if/else statement that prompts for user update.
        "What needs to be changed?"
      if
        user inputs category name
        prompt the user to input new value
        print information with new values included
      else
        user enters 'none'
        skip to print a confirmation report.
      end
=end

#Created an empty hash to initialize the hash and to input user info.
interior_design = {}

#Prompts the user to input user info and enters into the empty hash above
p "What is the Client's name?"
interior_design[:name] = gets.chomp.capitalize
p "What is the Client's age?"
interior_design[:age] = gets.chomp.to_i
p "How many children does the client have?"
interior_design[:num_of_children] = gets.chomp.to_i
p "Choose your decor theme. (Modern, Contemporary, Rustic, Country)"
interior_design[:decor_theme] = gets.chomp.capitalize
p "What is your budget?"
interior_design[:budget] = gets.chomp.to_i

#Prints user input info thats collected in a hash
p ""
p "------------------"
p "Client Information"
p "------------------"
interior_design.each do |category, user_info|
  puts "#{category}:  #{user_info}"
end

#Prompts user for any update needed and prints out the final result with updated information
p ""
p "What information would you like to update?"
p "(name, age, children, theme, budget)"
p "or else type 'done'."
update = gets.chomp.downcase
if update == "name"
  p "What is the Client's name?"
  new_name = gets.chomp.capitalize
  interior_design[:name] = new_name
  p ""
  p "------------------"
  p "Client Information"
  p "------------------"
  interior_design.each do |category, user_info|
    puts "#{category}:  #{user_info}"
  end
elsif update == "age"
  p "What is the Client's age?"
  new_age = gets.chomp.to_i
  interior_design[:age] = new_name
  p ""
  p "------------------"
  p "Client Information"
  p "------------------"
  interior_design.each do |category, user_info|
    puts "#{category}:  #{user_info}"
  end
elsif update == "children"
  p "How many children does the Client have?"
  new_num_of_children = gets.chomp.to_i
  interior_design[:num_of_children] = new_num_of_children
  p ""
  p "------------------"
  p "Client Information"
  p "------------------"
  interior_design.each do |category, user_info|
    puts "#{category}:  #{user_info}"
  end
elsif update == "theme"
  p "Choose your decor theme. (Modern, Contemporary, Rustic, Country)"
  new_decor_theme = gets.chomp.capitalize
  interior_design[:decor_theme] = new_decor_theme
  p ""
  p "------------------"
  p "Client Information"
  p "------------------"
  interior_design.each do |category, user_info|
    puts "#{category}:  #{user_info}"
  end
elsif update == "budget"
  p "What is your budget?"
  new_budget = gets.chomp.to_f
  interior_design[:budget] = new_budget
  p ""
  p "------------------"
  p "Client Information"
  p "------------------"
  interior_design.each do |category, user_info|
    puts "#{category}:  #{user_info}"
  end
else update == "done"
  p ""
  p "------------------"
  p "Client Information"
  p "------------------"
  interior_design.each do |category, user_info|
    puts "#{category}:  #{user_info}"
  end
end
