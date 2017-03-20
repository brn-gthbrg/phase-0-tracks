def method(int)
  puts "Method starting"
  int.to_i.times do |i|
    puts "Print this message for each round and count #{i + 1}."
  end
  puts "Method ending"
end

method(3)



