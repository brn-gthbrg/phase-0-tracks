# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Split string into an array
  # Take each item in array and add to our hash
  # set default quantity
  # print the list to the console [puts, p, print]
# output: hash


def create_list(items)
  shopping_list={}
  items.split.each do |item|
    shopping_list[item] = 1
  end
  p shopping_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # The list is a hash
  # We can add a new item as a key and an optional quantity as a value
# output: hash with new item

def add_item(list, item_name, quantity = 1)
  list[item_name] = quantity
  list
end


# Method to remove an item from the list
# input: list and item name
# steps:
  # The list is a hash
  # We can remove an item in the list by calling its name
# output: hash with item removed

def remove_item(list, item_name)
  list.delete(item_name)
  list
end


# Method to update the quantity of an item
# input: list, item name, and quantity
# steps:
  # The list is a hash
  # We can find the item in the list and change the quantity of that item
# output: hash with item quantity changed

def update_quantity(list, item_name, quantity)
  list[item_name] = quantity.to_i
  list
end


# Method to print a list and make it look pretty
# input: list
# steps:
  # print each key and value together in separate lines
# output: hash of current version of list


def print_list(list)
  list.each do |item, quantity|
    puts "We need #{quantity} #{item}"
  end
end



## DRIVER CODE

my_list = create_list("carrots apples cereal pizza")
puts my_list


# p add_item(my_list, "pickles")
# puts my_list

# p remove_item(my_list, "carrots")
# puts my_list

# p update_quantity(my_list, "pizza", 3)
# puts my_list

# print_list(my_list)

add_item(my_list, "Lemonade", 2)
add_item(my_list, "Tomatoes", 3)
add_item(my_list, "Onions")
add_item(my_list, "Ice Cream", 4)
puts my_list

remove_item(my_list, "Lemonade")
puts my_list

update_quantity(my_list, "Ice Cream", 1)
puts my_list

print_list(my_list)