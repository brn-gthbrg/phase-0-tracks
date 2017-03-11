# Virus Predictor

# I worked on this challenge [by myself, with: Blake Willis].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative accesses a file that's within the same directory. Require means following the path to a different directory to access a specific file.
require_relative 'state_data'


class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects # Combines the two methods into one string output
    predicted_deaths
    speed_of_spread
  end

  private #private makes the methods underneath inaccessible from outside the class.

# The number of deaths predicted depending on the population density in increments of 50.
  def predicted_deaths
    # predicted deaths is solely based on population density
   # if @population_density >= 200
   #   number_of_deaths = (@population * 0.4).floor
   # elsif @population_density >= 150
   #   number_of_deaths = (@population * 0.3).floor
   # elsif @population_density >= 100
   #   number_of_deaths = (@population * 0.2).floor
   # elsif @population_density >= 50
   #  number_of_deaths = (@population * 0.1).floor
   # else
   #   number_of_deaths = (@population * 0.05).floor
   # end

    if @population_density >= 200
      multiple=0.4
    elsif @population_density >= 150
      multiple=0.3
    elsif @population_density >= 100
      multiple=0.2
    elsif @population_density >= 50
      multiple=0.1
    else
      multiple=0.05
    end
    number_of_deaths = (@population * multiple).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

# Calculates the rate of spreading in months based on population density in increments of 50.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   # speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects



STATE_DATA.each do |state, data|
  new_instance = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    new_instance.virus_effects
end

#=======================================================================
# Reflection Section
# In state_data, The state names are given as keys in the form of integers. Within each state's hash, the keys are given as symbols. Symbols only use one identifier so they are easier for a program to read since a string is editable so each character has it's own identifier.
#require_relative links to another file within the same directory. require is used to go to a different directory to retrieve files.
# At first nothing but after the question was asked, it seemed odd that the variables were given instead of the instance variables.
# Using a class was reinforced well along with becoming more comfortable using data within different files.