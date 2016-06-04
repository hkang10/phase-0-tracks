#Release 1
#array
fridge = %w[milk egg yogurt cheese juice]

#hash
freezer = { "pizza" => "day 1",
            "shrimp" => "day 2",
            "hash browns" => "day 3",
            "chicken" => "day 4",
            "ice cream" => "day 5"}

#iterating through an array
puts ""
p "*** List of items in fridge ***"
fridge.each do |food|
  puts "Yumm....#{food}"
end
#deleting last item in array
puts ""
p "Deleting spoiled food in fridge"
fridge.pop

#printing new list of array
puts ""
p "*** New list of items in fridge ***"
fridge.each do |food|
  puts "Yumm....#{food}"
end



puts ""
p "*** List of freezer items ***"
freezer.each do |food, day|
  puts "#{food} on #{day}"
end
