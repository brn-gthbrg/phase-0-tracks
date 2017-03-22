# create hash for input data
# Prompt user for Client Name
# client age
# number of children
# decor theme
# Rush order or not
# changes or none?
# print results

order = {}

p "What is your name?"
order[:name] = gets.chomp
p "What is your age?"
order[:age] = gets.chomp.to_i
p "How many children do you have?"
order[:children] = gets.chomp.to_i
p "What decor theme do you want?"
order[:decor_theme] = gets.chomp
p "Is this a rush job? (y,n)"
rush_choice = gets.chomp
if rush_choice == "y"
order[:rush] = true
else
  order[:rush] = false
end

p order

# Ask to fix field
# if yes, choose field
# get updated field info
# update field or close and print final data
# if no, close and print final data

p "Do you need to fix any fields? (y/n)"
mistake = gets.chomp
  if mistake == "y"
    p "Choose the key you want to fix or type none"
    key_fix = gets.chomp
    if
      key_fix == "none"
        p "Form complete"
        p order
    else
      p "Updating #{key_fix}"
      key_fix = key_fix.to_sym
      order[key_fix] = gets.chomp
      p order
    end
  elsif mistake == "n"
    p "Form complete"
    p order
  end
