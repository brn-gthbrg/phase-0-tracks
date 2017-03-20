def method(int)
  puts "Method starting"
  int.to_i.times do |i|
    puts "Print this message for each round and count #{i + 1}."
  end
  puts "Method ending"
end

method(3)


# Array
cyclists = ["Lance Armstrong", "Levi Leipheimer", "George Hincapie"]

cyclists.each do
  |name| puts "The cyclist's name is #{name}."
end

cyclists.map! do |name_mod|
  puts name_mod.downcase
end

# Hash
athletes_hash = {
  basketball: "Michael Jordan",
  football: "Andrew Luck",
  dodgeball: "Joe Schmoe"
}

athletes_hash.each do |sport, athlete|
  puts "#{athlete} plays #{sport}"
end


# Release 2
array = [55, 23, 33, 107, 87, 92]

hash = {
  one: 1,
  two: 2,
  three: 3
}

# array.delete_if { |number| number < 50 }
# puts array
# hash.delete_if { |word, number| number <= 2 }
# puts hash.values

# array.keep_if { |number| number < 50 }
# puts array
# hash.keep_if { |word, number| number <= 2 }
# puts hash.values

# array.select! {|number| number < 50 }
# puts array
# hash.select! { |word, number| number <= 2 }
# puts hash.values

# puts array.drop_while { |number| number < 100 }
hash.drop_while { |word, number| number < 2 }