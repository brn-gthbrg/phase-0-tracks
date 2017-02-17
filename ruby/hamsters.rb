puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "Hamster's name is #{hamster_name}"

puts "What is the volume level of #{hamster_name}?"
volume_level = gets.chomp.to_i
puts "#{hamster_name} has a volume level of #{volume_level}."

puts "What is #{hamster_name}'s fur color?"
fur_color = gets.chomp
puts "#{hamster_name} has #{fur_color} color."

puts "Is #{hamster_name} a good candidate for adoption (y/n)?"
good_candidate = gets.chomp
  if good_candidate == "y"
    puts "Good candidate"
    good_candidate = true
  else
    puts "Bad candidate"
    good_candidate = false
  end

puts "How old is #{hamster_name}?"
estimated_age = gets.chomp
  if estimated_age.empty?
    puts "nil"
    estimated_age = nil
  else
    puts "#{hamster_name} is #{estimated_age} years old"
    estimated_age = estimated_age.to_i
  end