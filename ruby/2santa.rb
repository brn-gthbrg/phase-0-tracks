class Santa

  attr_reader :ethniticy
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Happy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

   def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
    p @reindeer_ranking
  end

#  def gender(input)
#    @gender = input
#  end

#  def age
#    @age
#  end

#  def ethnicity
#    @ethnicity
#  end

end



# DRIVER CODE
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

#santas[0].get_mad_at("Vixen")
#puts santas[0].age




#USER INTERFACE
puts "How many Santas do you want?"
input_numb = gets.chomp.to_i

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
input_numb.times do |i|
  rand_gender = example_genders.shuffle
  rand_ethnic = example_ethnicities.shuffle
  santas << Santa.new(rand_gender[0], rand_ethnic[0])
end

santas.each { |santa| santa.age = rand(1..140) }
santas.each { |santa| puts santa.age}