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
