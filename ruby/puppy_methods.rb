class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(numb)
    numb.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(numb)
    puts numb * 7
  end

  def shake
    puts "*sticks out paw*"
  end

end

Puppy.new.fetch("ball")
Puppy.new.speak(3)
Puppy.new.roll_over
Puppy.new.dog_years(2)




class Cars

  def initialize
    puts "This is the initialize method."
    @brands = ["Toyota", "Ford", "Honda", "Mercedes", "Fiat"]
  end

  def assign_car
    @maker = @brands.sample
  end

  def tire_turn(numb)
    numb.times do
      puts "The tire has turned #{numb} times!"
    end
  end

  def ignition
    puts "Starting up the #{@maker}"
  end

  def direction(compass)
    puts "Heading #{compass}"
  end

end



toyota = Cars.new
toyota.direction("South")


car_arr = []

50.times do
cars = Cars.new
car_arr << cars
end

#car_arr.each do |car|
#  puts "This #{car.assign_car}"
#end

car_arr.each do |car_inst|
  car_inst.assign_car
  car_inst.tire_turn(3)
  car_inst.ignition
end