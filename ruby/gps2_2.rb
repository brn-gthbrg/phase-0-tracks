# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
puts "List items to add to list separated by a space."
input = ""
# steps:
  # take string and separate each word into separate strings
  # set each string as a key within hash table
  # set default to 1
  # add each item to hash
  # use a block to print each item in the hash
# output: shopping_list hash

# Method to add an item to a list
# input: list (shopping_list), item name, and optional quantity
# steps:
  # take string and add as key to hash
  # set default quantity to 1
  # use push method to add item to hash
# output: shopping_list with new item added to end

# Method to remove an item from the list
# input: item name, shopping_list
# steps:
  # Find index of item name within shopping_list
  # use delete method to remove item name from shopping_list
  # Can combine first two steps with delete_if method
# output: shopping_list without input item

# Method to update the quantity of an item
# input: shopping_list, item name, new quantity
# steps:
  # Find the item within the shopping_list
  # update the value of quantity for the item
# output: shopping_list with new quantity for input item

# Method to print a list and make it look pretty
# input: shopping_list
# steps:
  # iterate through hash and use puts
# output: printout of shopping_list