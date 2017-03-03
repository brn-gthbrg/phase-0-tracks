class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end


class Cars

  def initialize
    puts "This is the initialize method."
  end

  def tire_turn(numb)
    numb.times do
      puts "The tire has turned #{numb} times!"
    end
  end

  def ignition
    puts "Starting up the car"
  end
end

cars_arr = []

50.times do
cars = Cars.new
cars_arr << cars
end

cars_arr.each do |car_inst|
  car_inst.tire_turn(3)
  car_inst.ignition
end
