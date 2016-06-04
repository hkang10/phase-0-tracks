#Release 2
def grocery(x, y, z)
  list = []
  list << x
  list << y
  list << z
  return list
end

p grocery(4, 5, 6)

def add_to_array(array1, add_item)
  array1 << add_item
  return array1
end

p add_to_array([],"something")

#Release 1

array = []
p array

array.push("Green beans", "Eggs", "French Onion", "pasta","tomato")
p array

array.delete_at(2)
p array

array.insert(2, "hot sauce")
p array

array.shift
p array

p "Does this include eggs?"
p array.include?("Eggs")

array_two = %w[cheese yogurt milk salt]
combine = array.concat(array_two)
p combine
