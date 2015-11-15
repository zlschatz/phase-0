# Virus Predictor

# I worked on this challenge [by myself, with: Dan].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative will allow our file to see the state data stored within the state_data. As opposed to 'require', require_relative denotes specificity that data from another file will be directly used. 'Require' may be more general to someone unfamiliar with the code being executed. Require_relative is also faster than require.
#

class VirusPredictor

  #Setting up and defining instance variables to be used throughout the class. The instance variables are equal to the parameters used as inputs when the class is created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Return the outputs of the predicted_deaths and speed_of_spread methods -- easier to get your outputs as opposed to calling individually
  # This method is for public use and allows a user to retrieve the outputs from two private methods without giving access to those methods' code.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # Determine the number of deaths based on population density algorithm. Calculation will round down to the nearest human. Print statement for number of deaths within that state, giving a readable output to the user.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    number_of_deaths = number_of_deaths.floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Determine the speed at which the virus will spread across the state based on the population_density. Incrementing speed based on the density. Prints out statement for number of months it will take to spread across the state.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

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

def data_print
  STATE_DATA.each do |current_state|
    state = VirusPredictor.new(current_state[0], current_state[1][:population_density], current_state[1][:population])
    state.virus_effects
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


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
The difference can be seen through the syntax of each hash. This is done to easily display the nested hashes for each state's data. The first hash includes the state name and uses => to direct towards the second hash. The second hash uses key: value notation. Through our work, we believe that changing the style of the hash allows outside developers to understand the data being manipulated in the challenge.

What does require_relative do? How is it different from require?
Require_relative will allow our file to see the state data stored within the state_data. As opposed to 'require', require_relative denotes specificity that data from another file will be directly used. 'Require' may be more general to someone unfamiliar with the code being executed. Require_relative is also faster than require.

What are some ways to iterate through a hash?
We used .each to iterate through the hash. While doing so, we ran into a few issues within our syntax. It took us a while to properly target the values we wanted to pull. I imagine that the hash could have also been iterated through by using other methods.


When refactoring virus_effects, what stood out to you about the variables, if anything?
Our refactoring wasn't entirely successful. In terms of readability, we believe that the current code is very readable. We eliminated a few redundancies. At the same time, we considered iterating through the if/else cases to change the increments of percentages and speed in each method. In the end, we found ourselves lost in the iteration and left the code as is.

What concept did you most solidify in this challenge?
Iterating through hashes are powerful methods. We can take a ton of data and spit back a lot of info in a short period of time. Reviewing hashes was vital for the completion of this challenge. We also continued to solidify some differences between JS and Ruby, occasionally mixing in terms from JS during this challenge.


=end