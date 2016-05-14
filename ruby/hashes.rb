#New way
#Retrieving data
puts "Client's name:"
name = gets.chomp.capitalize
puts "Client's age:"
age = gets.chomp.to_i
puts "Number of children in Client's household:"
num_of_children = gets.chomp.to_i
puts "Decor Theme: (Modern, Country, Rustic, Contemporary)"
theme = gets.chomp.capitalize
puts "Budget:"
budget = gets.chomp

#Creating new hash to store Client's data
interior_design = {
  username: name,
  age: age,
  num_of_children: num_of_children,
  decor_theme: theme,
  budget: budget
}

#Printing Client's input information
puts ""
puts "Client's information:"
interior_design.each {|x, y| puts "#{x}: #{y}" }

puts""

#Creating a loop to allow user to update information

new_data = " "

while (new_data != "none") do

puts "What item do you want to change (username, age, children, theme, budget), otherwise type 'none'"
new_data = gets.chomp.downcase

	if new_data == "username"
		puts "Client's name: "
		name = gets.chomp.to_s
		interior_design[:username] = name
	elsif new_data == "age"
		puts "Client's age: "
		age = gets.chomp.to_i
		interior_design[:age] = age
	elsif new_data == "children"
		puts "Number of children in Client's household: "
		num_of_children = gets.chomp.to_i
		interior_design[:num_of_children] = num_of_children
	elsif new_data == "theme"
		puts "Decor Theme: (Modern, Country, Rustic, Contemporary)"
		theme = gets.chomp
		interior_design[:decor_theme] = theme
	elsif new_data == "budget"
		puts "Budget: "
		budget = gets.chomp
		interior_design[:budget] = budget
	else
		puts " "
	end
	puts "What item do you want to change (username, age, num_of_children, decor_theme, budget), otherwise type 'none'"
		new_data = gets.chomp.downcase
end

#Print client's information with updated information
puts ""
puts "Client's information:"
interior_design.each {|x, y| puts "#{x}: #{y}" }
