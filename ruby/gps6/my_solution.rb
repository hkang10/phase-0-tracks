
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# We believe that require_relative has more narrow, directory-specific scope than require.
# For example, you would use require_relative to link to a file that is within the same directory as the file you are coding in.
# Require is used for retrieving 'gems' or larger libraries (usually someone else files) whereas require_relative is usually your own file(s).

require_relative 'state_data'

class VirusPredictor

  # Often used method for any declared class that sets up all of the instance variables to be used.
  # For the VirusPredictor class, there are 3 parameters in the initialize method that decribe characteristics layed out in the state_data hash.
  # Each argument passed into the method is being assigned to an attribute.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # This method calls the predicted_deaths and speed_of_spread methods decribed below, and passes in the attributes described in initialize.
  # The value returned will be the same value returned for the called method.



  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #From this point, the methods below aren't accessible outside of this class.
  private

  #This method takes the range for population_density that'll be called in both methods below to be used to determine number of deaths and rate of deaths.
  def population_ranges
    @high_range = (@population_density >= 200)

    @mid_high = (@population_density >= 150)

    @mid_low = (@population_density >= 100)

    @low_range = (@population_density >= 50)

  end

  # This method takes the population density (from state data) and depending on that density number will return a value of the number of deaths in that state.
  # It uses conditional flow and prints out a concluding statement.
  def predicted_deaths
    # predicted deaths is solely based on population density

    case population_ranges

    when @low_range
      number_of_deaths = (@population * 0.05).floor
    when @mid_low
      number_of_deaths = (@population * 0.1).floor
    when @mid_high
      number_of_deaths = (@population * 0.2).floor
    when @high_range
      number_of_deaths = (@population * 0.3).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

=begin
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
=end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method also takes population density by state and calculates the rate of outbreak using conditional flow and returns
  # a statement of how quickly the virus will spread across the state.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    case population_ranges

    when @high_range
      speed = 0.5
    when @mid_high
      speed = 1
    when @mid_low
      speed = 1.5
    when @low_range
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

STATE_DATA.each do |state, value|
  instance = VirusPredictor.new(state, value[:population_density], value[:population])
  instance.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
# The state names used the hash rocket, while the population keys used the symbolic short cut.


What does require_relative do? How is it different from require?
# We believe that require_relative has more narrow, directory-specific scope than require.
# For example, you would use require_relative to link to a file that is within the same directory as the file you are coding in.
# Require is used for retrieving 'gems' or larger libraries (usually someone else files) whereas require_relative is usually your own file(s).

What are some ways to iterate through a hash?
# some ways to iterate through a hash include each, map, each_key


When refactoring virus_effects, what stood out to you about the variables, if anything?
# The parameters where all instance variables. By using attr_reader it was unnecessary to
# send variables to the method. They could instead be accessed as instance variables


What concept did you most solidify in this challenge?
# I was able to appreciate how instance variables make coding much easier.
=end
