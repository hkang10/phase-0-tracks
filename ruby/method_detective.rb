# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#1
p "iNvEsTiGaTiOn".swapcase
#=> "InVeStIgAtIoN"

puts "---"

#2
p "zom".insert 2, "o"
# => “zoom”

#2
p "zom".replace "zoom"
# => “zoom”

puts "---"

#3
p "enhance".center(15)
# => "    enhance    "

puts "---"

#4
p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "---"

#5
p "the usual".insert 9, " suspects"
#=> "the usual suspects"

puts "---"

#6
p " suspects".insert 0, "the usual"
# => "the usual suspects"

puts "---"

#7
p "The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"

puts "---"

#8
p "The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

puts "---"

#9
p "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

puts "---"

#10
p "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the integer of character "z"

puts "---"

#11
p "How many times does the letter 'a' appear in this string?".count "a"
# => 4

puts "---"
