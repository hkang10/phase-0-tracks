#Release 2: Design and Build a Nested Data Structure #Build a nested data structure
six_flags = {
  yankee_harbor: {
    num_of_rollercoaster: 5,
    list_of_rollercoaster: {
      "Vertical Velocity" => "Flashpass",
      "Yankee Clipper" => "Flashpass",
      "Whrirligig" => "No Flashpass",
      "Batman: The Ride" => "Flashpass",
      "East River Crawler" => "No Flashpass"
      },
    restaurants: ["Funnel Cakes Express", "Angelo's Pasta & Pizza", " Jack's Snacks"]
    },
  southwest_territory: {
      num_of_rollercoaster: 6,
      list_of_rollercoaster: {
        "Viper" => "Flashpass",
        "Chubasco" => "No Flashpass",
        "Ricochet" => "No Flashpass",
        "Giant Drop" => "Flashpass",
        "Raging Bull" => "Flashpass",
        "River Rocker" => "No Flashpass"
        },
      restaurants: ["Fiesta Fries Cantina", "Waterin' Hole", "Cold Stone Creamery", "The Oasis"]
      },
  orleans_place: {
    num_of_rollercoaster: 4,
    list_of_rollercoaster: {
        "The Dark Knight" => "Flashpass",
        "Superman" => "Flashpass",
        "Condor" => "No Flashpass",
        "Rue Le Dodge" => "Flashpass"
        },
        restaurants: ["Primo's Pizzeria", "Antoine's", "Go Fresh Cafe"]
      },
}

#Release 2: Accessing nested items
puts "How many rollercoasters are in Orleans Place?"
p six_flags[:orleans_place][:num_of_rollercoaster]
puts ""

puts "Please remove the closed restaurant 'Fiesta Fries Cantina' from Southwest Territory."
six_flags[:southwest_territory][:restaurants].delete("Fiesta Fries Cantina")
puts""

puts "Your new list of restaurants in Southwest Territory is: "
p six_flags[:southwest_territory][:restaurants]
puts""

puts "Please add 'Fiesta Fries Cantina' to Yankee Harbor."
six_flags[:yankee_harbor][:restaurants].push("Fiesta Fries Cantina")
puts ""

puts "Your new list of resturants in Yankee Harbor is: "
p six_flags[:yankee_harbor][:restaurants]
puts ""

puts "What rollercoasters are in Orleans Place?"
p six_flags[:orleans_place][:list_of_rollercoaster]
puts ""

puts "What is the first listed rollercoaster ride in Yankee Harbor?"
p six_flags[:yankee_harbor][:list_of_rollercoaster].first
puts ""
