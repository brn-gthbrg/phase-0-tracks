class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(numb)
    numb.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    dog_int = int * 7
    puts dog_int
  end

  def shake
    puts "*lifts paw*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end