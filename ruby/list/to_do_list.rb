class TodoList

  def initialize(item_array)
    @items = item_array
  end

  def get_items
    return @items
  end

  def add_item(item_string)
    @items << item_string
  end

  def delete_item(item_name)
    @items.delete(item_name)
  end

  def get_item(item_index)
    @items[item_index]
  end
<<<<<<< HEAD

=======
  
>>>>>>> e3f4cb133484f2b25ebec693a1dd80e3eccee5f7
end
