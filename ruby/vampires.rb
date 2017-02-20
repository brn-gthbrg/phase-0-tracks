# Number of employees to process
puts "How many employees do you need to process?"
employees = gets.chomp.to_i

$i = 0
while $i < employees do
  $i +=1
# Application form
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year_born = gets.chomp.to_i
   if year_born + age == 2017
     year_born = true
   end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp
  if
    garlic_bread == "y"
    garlic_bread = true
  else
    garlic_bread = false
  end

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp
  if
    health_insurance == "y"
    health_insurance = true
  else
    health_insurance = false
  end

# Allergies
puts "Do you have any allergies? Please list one:"
allergies = gets.chomp
until allergies == "sunshine" || "done" do
  puts "What is your next allergy?"
  if
    allergies == "sunshine"
    puts "Probably a vampire"
  elsif
    allergies == "done"
    puts "Allergy list complete"
  end
end


# Conditional logic
puts "Results of application:"
  if
    year_born && (garlic_bread || health_insurance)
    puts "Probaby not a vampire"
  elsif
    !year_born && (!garlic_bread || !health_insurance)
    puts "Probably a vampire"
  elsif
    !year_born && !garlic_bread && !health_insurance
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || "Tu Fang"
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
  end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."