# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative will reference the data from the named file.
# require means you need to go through the ruby load path.
require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population_density, :population
  # initialize defines each attribute
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # virus_effects runs and combines the private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicted deaths calculates predicted deaths based on population, population_density depending on the state listed.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      multiplier = 0.4
    elsif population_density >= 150
      multiplier = 0.3
    elsif population_density >= 100
      multiplier = 0.2
    elsif population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (population * multiplier).floor
    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
  # speed of spread will rate the speed based on population density of the given state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density == [151..199]
      speed += 1
    elsif population_density == [100..150]
      speed += 1.5
    elsif population_density == [50..99]
      speed += 2
    else
      speed += 2.5
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
  new_instance = VirusPredictor.new(state, data[:population_density], data[:population])
  new_instance.virus_effects
end


#=======================================================================
# Reflection Section
#The overall STATE_DATA hash uses strings for keys and the individual states use symbols as keys. The STATE_DATA is a "hashy hash" because it is a bunch of hashes inside of a hash.

#require_relative references a file that is in the same repository (same name file). require will reference a file following its ruby load path.

#Using the each, map, or map! methods and using a block to iterate through each hash.

#We were repeating arguments for each method that is called within the virus_effects method and each argument was an instance variable. We discovered instance variables all over the class that we could rewrite into attr_reader.

#Referencing and using data from a very large hash filled with hashes. Also ways to refactor methods.