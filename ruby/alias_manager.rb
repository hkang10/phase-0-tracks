

#Creating a method that allows to put a name through a test that'll index each vowels and consonants and output one index over.

def swap_name(alias_name)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	swap_name = alias_name.split("")
	new_name = []
	swap_name.map! do |var|
		if vowels.include?(var)
			new_name << vowels[vowels.index(var)+1]
		elsif consonants.include?(var)
			new_name << consonants[consonants.index(var)+1]
		else
			puts " "
		end
	end

	new_name.join("").split.map {|var| var.capitalize}.join("")
end

#Initializing a hash

user_input = {}

answer = ""

puts "Would you like a secret name? (yes or no)"
answer = gets.chomp.downcase
puts""

#Loops through asking if customer wants multiple alias name.

while (answer != "no") do

puts "What is your first name?"
first_name = gets.chomp.downcase
puts ""

puts "What is your last name?"
last_name = gets.chomp.downcase
puts ""

alias_name = first_name + last_name

puts "Your new name is " + swap_name(alias_name)
puts ""

puts "Would you like a another secret name? (yes or no)"
answer = gets.chomp.downcase

user_input[alias_name] = swap_name(alias_name)
end

#Prints out result of alias name
puts""
user_input.each do |x, y| puts "#{x} is actually #{y}."
end
