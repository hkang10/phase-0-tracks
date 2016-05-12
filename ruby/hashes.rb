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
  Username: name,
  Age: age,
  Number_of_Children: num_of_children,
  Decor_Theme: theme,
  Budget: budget
}

puts ""
puts "Client's information:"
interior_design.each {|x, y| puts "#{x}: #{y}" }

#Methods to replace data
def new_update(interior_design)
interior_design[:name] = interior_design[:name]
interior_design[:age] = interior_design[:age]
interior_design[:num_of_children] = interior_design[:num_of_children]
interior_design[:theme] = interior_design[:theme]
interior_design[:budget] = interior_design[:budget]
return interior_design
end

def new_data(interior_design)
puts "What item do you want to change, otherwise type 'none'"
new_data = gets.chomp.downcase
if new_data != "none"
puts "What is the correct information?"
response = new_data.chomp
interior_design[response] = gets.chomp
else
puts interior_design
end
puts ""
return interior_design
end

#Calling methods
updated_hash = interior_design
updated_hash = new_update(updated_hash)
puts updated_hash
new_data(updated_hash)
updated_hash = new_update(updated_hash)
puts updated_hash
puts ""
puts "Client's information:"
interior_design.each {|x, y| puts "#{x}: #{y}" }
