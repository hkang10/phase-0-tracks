# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # take input as string and split it
  # define a hash with the items in the grocery list as keys
# set default quantity - 1
# print the list to the console [can you use one of your other methods here?]
# output: hash with the grocery items as keys and their quantity as value

  def create_list(items)
    grocery_list = {}
    list_items = items.split
    list_items.each do |item|
      grocery_list[item] = 1
    end
    p print_list(grocery_list)
  end



# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # push new item to hash, keep default quantity of 1 if unspecified in argument
  # print new item and quantity
# output: new item and quantity

  def add_item(item_name, grocery_list, quantity=1)
    grocery_list[item_name] = quantity
    grocery_list
  end


# Method to remove an item from the list
# input: name of item (key) that you want to remove
# steps: use delete to remove item from hash
# output: deleted item and quantity

  def remove_item(item_name, grocery_list)
      grocery_list.delete(item_name)
      grocery_list
  end



# Method to update the quantity of an item
# input: name of the item to be updated, new quantity
# steps: reassign value of that item
# output: item with updated quantity

  def update_quantity(item_name, grocery_list, quantity)
      grocery_list[item_name] = quantity
      grocery_list
  end

# Method to print a list and make it look pretty
# input: the grocery list
# steps: iterate through the list
  # print the name of the item and the quantity for each item
# output: the name of each item and their respective quantities

  def print_list(grocery_list)
    puts "*" * 40 + "Grocery List" + "*" * 40
    grocery_list.each do |item, quantity|
      puts "#{item.capitalize}".ljust(30) +  "#{quantity}".rjust(10)

    end
  end


#Driver Code
# grocery_list = create_list("carrots apples cereal pizza")
# p remove_item("apples", grocery_list)
# p update_quantity("carrots", grocery_list, 10)
# p add_item("tomatoes", grocery_list, 4)
# print_list(grocery_list)

create_list("lemonade tomatoes onions")
grocery_list = create_list("lemonade tomatoes onions")
p add_item("ice cream", grocery_list, 4)

p update_quantity("lemonade", grocery_list, 2)
p update_quantity("tomatoes", grocery_list, 3)
p update_quantity("ice cream", grocery_list, 1)

print_list(grocery_list)

What did you learn about pseudocode from working on this challenge?
What are the tradeoffs of using arrays and hashes for this challenge?
What does a method return?
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?
