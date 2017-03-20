def method(int)
  int.to_i.times do |i|
    puts "Print this message for each round and count #{i + 1}."
  end
end

method(3)

