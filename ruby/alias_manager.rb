

=begin
PSEUDOCODE (Swapping first and last name)
 Release 0
 Step 1: First write a method that will prompt a user to input their first name and last name.
 Step 2: In the same method, set an empty array and input names into the array.
 Step 3: Once in the array, use pop method to reverse the name with last name first.
 Step 4: print the names swapped.
=end

	def swap_name
		full_name = []
		p "What is your first name?"
		first_name = gets.chomp.to_s.capitalize
		full_name << first_name
		p "What is your last name?"
		last_name = gets.chomp.to_s.capitalize
		full_name << last_name

		swap_full_name = full_name.reverse!
		p "Your name is #{swap_full_name}."
	end

#Driver code
puts ""
puts "--------------------------"
puts swap_name
puts "--------------------------"
puts ""

=begin
PSEUDOCODE ()
 Step 1: write a method that has two variables. one set to vowels and one set to consonants
 Step 2:  create user loop to ask customer if user wants an alias name.
 Step 3: in the method, it will split the user name and put through a test using .map method
 Step 4: the test will test the string if it is a vowel it will output the next vowel in line.
					else if the letter is a consonant it will return one consonant over.
 Step 5: It will then join the letters back together and return the alias name.
 Step 6: Print the result of alias name from original.
=end

def swap_name(alias_name)
vowels = "aeioua"
consonants = "bcdfghjklmnpqrstvwxyzb"
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
