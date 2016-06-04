#Release 1
#array
fridge = %w[milk egg yogurt cheese juice]

#hash
freezer = { "pizza" => "day 1",
            "shrimp" => "day 2",
            "hash browns" => "day 3",
            "chicken" => "day 4",
            "ice cream" => "day 5"}

#iterating through an array using .each and .map! method
puts ""
p "*** List of items in fridge ***"
fridge.each do |food|
  puts "Yumm....#{food}"
end
#deleting last item in array
fridge.pop

#printing new list of array
puts ""
p "*** New list of items in fridge ***"
fridge.map! do |food|
  puts "Yumm....#{food}"
end

#iterating through a hash using .each method
puts ""
p "*** List of freezer items ***"
freezer.each do |food, day|
  puts "#{food} on #{day}"
end

#deleting an object from hash
freezer.delete("pizza")

#printing new list of hash after modification
puts ""
p "*** New list of freezer items ***"
freezer.each do |food, day|
  puts "#{food} on #{day}"
end
