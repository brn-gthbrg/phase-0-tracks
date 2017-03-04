class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
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
  end

end

# puts Santa.new.eat_milk_and_cookies("chocolate chip")

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
santas.each {|santa| age = rand()




# DRIVER CODE
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
santas.each {|santa| santa.get_mad_at("Vixen")}
# santas.each {|santa| santa.celebrate_birthday}
p santas