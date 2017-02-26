# Release 0
def welcome
  puts "Hello World!"
  yield ("Steve")
end

welcome { |name| puts "Hello to you too, #{name}!" }

# Release 1

# Array
athletes = ["Michael Jordan", "Peyton Manning", "Alex Morgan"]

athletes.each do
  |name| puts "The athlete's name is #{name}."
end

athletes.map! do |name_mod|
  puts name_mod.downcase
end

# Hash
athletes_hash = {
  basketball: "Michael Jordan",
  football: "Peyton Manning",
  soccer: "Alex Morgan"
}

athletes_hash.each do |sport, athlete|
  puts "#{athlete} plays the sport #{sport}"
end

# Release 2
array = [92, 46, 33, 101, 87, 22]

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