#Release 1: Explore the Docs

drill = ["abc", "job", "school", "hello", "five"]
drill

drill.delete_at(2)
p drill

drill.insert(2, "dbc")
p drill

drill.delete "abc"
p drill

p "True or false, does it include the word hello?"
p drill.include?("hello")
p drill

array = ["abby", "jessica", "vanessa", "george"]
  
new = drill.concat(array)
