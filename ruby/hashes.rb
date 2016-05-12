#New way
#Retrieving data
puts "Client's name:"
name = gets.chomp.capitalize
puts "Client's age:"
age = gets.chomp.to_i
puts "Number of children in Client's household:" num_of_children = gets.chomp.to_i
puts "Decor Theme: (Modern, Country, Rustic, Contemporary)" theme = gets.chomp.capitalize
puts "Budget:"
budget = gets.chomp

#Creating new hash to store Client's data
interior_design = {
  Username: name,
  Age: age,
  Number_of_Children: num_of_children, Decor_Theme: theme,
  Budget: budget
}

puts ""
puts "Client's information:" interior_design.each {|x, y| puts "#{x}: #{y}" }
