# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # take string and separate each word into separate strings
  # set each string as a key within hash table
  # set default to 1
  # add each item to hash
  # use a block to print each item in the hash
# output: shopping_list hash


def create_list(items)
  list = items.split
  shopping_list = {}
  list.each do |item|
    shopping_list[item] = 1
  end
  shopping_list
end
final_list = create_list("banana apple pear")
puts final_list

# Method to add an item to a list
# input: list (shopping_list), item name, and optional quantity
# steps:
  # take string and add as key to hash
  # set default quantity to 1
  # use push method to add item to hash
# output: shopping_list with new item added to end

def add_item(list, item, quantity)
  #list = item.push
    list[item] = quantity.to_i
    list
end
puts final_list = add_item(final_list, "onions", 2)

# Method to remove an item from the list
# input: item name, shopping_list
# steps:
  # Find index of item name within shopping_list
  # use delete method to remove item name from shopping_list
  # Can combine first two steps with delete_if method
# output: shopping_list without input item

def remove_item(list, item)
    list.delete(item)
    list
end
puts final_list = remove_item(final_list, "apple")

# Method to update the quantity of an item
# input: shopping_list, item name, new quantity
# steps:
  # Find the item within the shopping_list
  # update the value of quantity for the item
# output: shopping_list with new quantity for input item

def update_quantity(list, item, quantity)
    list[item] = quantity.to_i
    list
end
puts final_list = update_quantity(final_list, "banana", 3)

# Method to print a list and make it look pretty
# input: shopping_list
# steps:
  # iterate through hash and use puts
# output: printout of shopping_list

def print_list(grocery_list)
  grocery_list.each { |item, quantity| puts "You need #{quantity} #{item}"}
end

print_list(final_list)

# RELEASE 4
# Taking the time to pseudocode helps speed along the process of writing out the code. It's nice to think out all of the methods in the beginning before diving into coding.
# An array would have worked to create a list of each item but since we also want to assign a quantity, a hash was the better option.
# A method returns an updated version of the list. We used the following methods to change the "final_list" created in the first method.
# We can pass any defined piece of data through a method such as an array, hash, variable, integer, or float.
# We can pass information between methods by assigning the methods output to a variable and using that variable as an argument in a different method.
# The importance of pseudocode was the first concept reinforced. The second major concept was the way separate methods can interact with and change the same data structure.