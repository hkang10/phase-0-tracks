puts "What is your hamster's name? If you don't have a name yet for your hamster then we will name it for you!"
hamsters_name = gets.chomp.capitalize!

puts "How loud can your hamster get (Level 1 to 10; 10 being the loudest)?"
volume = gets.chomp.to_i

puts "What color fur does your hamster have?"
fur_color = gets.chomp

puts "Good candidate for adoption? (Enter 'y' for yes and 'n' for no)"
adoption = gets.chomp

puts "How old is your hamster? If you don't know just give me an estimate. If you really don't know, just enter '0'"
age = gets.chomp.to_f
if age == 0
  age = nil
end
