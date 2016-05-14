

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
