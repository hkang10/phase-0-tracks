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

#Release 2
array = [ 1, 2, 3, 4, 5]

hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5
}
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5)
array.delete_if {|num| num < 3}
p array

hash.delete_if{|x, y| y < 2}
puts hash

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5)
array.keep_if {|num| num > 3}
p array

hash.keep_if{|x, y| y < 3}
puts hash

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
array.select! { |num| num.even? }
p array

hash.select!{|x, y| y > 2}
puts hash

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
array.reject! {|num| num > 2}
p array

hash.reject!{|x, y| y > 3}
puts hash
