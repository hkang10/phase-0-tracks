#Release 0

def iteration
  name1 = "Audrey"
  name2 = "Anish"
  puts "I am learning iteration!"
  2.times { yield(name1, name2) }

end
iteration { |name1, name2| puts "#{name1} and #{name2} come and learn!" }

#Release 1

# this is an array

list_of_cars = %w[ BMW, Acura, Audi, Tesla ]

# this is a hash

upscale_cars = {
  "Day 1" => "lamborgini",
  "Day 2" => "Ferrari",
  "Day 3" => "Maserati",
  "Day 4" => "Aston Martin"
}

# this is .each for an array

puts "Before .each call:"
p list_of_cars

list_of_cars.each do |cars|
  list_of_cars.delete_at(3)
end
puts "After .each call:"
p list_of_cars

# this is .map for an array

puts "Before .map call:"
p list_of_cars

modified = list_of_cars.map do |cars|
  puts cars
  cars.upcase
end

puts "After .map call:"
p modified

# this is .each for hash

puts "Before .each call:"
p upscale_cars

upscale_cars.each {|days, cars| puts days, cars}
p upscale_cars

upscale_cars.delete("Day 1")

puts "After .each call:"
p upscale_cars

#Release 2

array = [ 1, 2, 3, 4, 5]

hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5
}

#Running conditions through an array

array.delete_if {|num| num < 3}
p array

array.keep_if {|num| num > 3}
p array

array.select! { |num| num.even? }
p array

array.reject! {|num| num > 2}
p array


#Running conditions through hash

hash.delete_if{|x, y| y < 2}
puts hash

hash.keep_if{|x, y| y < 3}
puts hash

hash.select!{|x, y| y > 2}
puts hash

hash.reject!{|x, y| y > 3}
puts hash
