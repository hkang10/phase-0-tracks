# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def create_list(list, grocery_hash={})
	list_array = list.split(" ")
	quantity = 0
	list_array.each do |item|
		grocery_hash[item]=quantity
	end
	print_list(grocery_hash)
	return grocery_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
	#gets.chomp item
	#gets.to_i an integer for quantity
	#add item and quantity to a hash
	#item =  key and the quantity = data
# output: returns hash[item => quantity]
def add_item(item, grocery_hash={})
	grocery_hash.merge! ({item => 1})
end

# Method to remove an item from the list
# input: item name and the hash{}
# steps:
	# hash.each do
	# hash.delete_if {|key| key == item}
# output: returns hash[item => quantity]
def remove_item(item, grocery_hash={})
	grocery_hash.delete_if{|food, quantity| food == item}
end
# Method to update the quantity of an item
# input: update_quantity, item, and hash
# steps:
	#search for item in hash
	#hash.map! do |key|
		#if key = item
		#item[quantity] = update_quantity
# output: returns hash[item => quantity]

# Method to print a list and make it look pretty
# input:
# steps:
# output:
