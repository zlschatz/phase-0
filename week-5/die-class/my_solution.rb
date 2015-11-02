# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: number of sides / random value within range
# Steps:
  # Define class
  # initialize method passing the argument of sides
  # define variable sides
  # define method sides returning the variable of sides
  # define roll to return rand number
  # include if statement to return error for values less than 1


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("What die have you rolled with a value of less than one?")
  end

  def sides
    return @sides
  end

  def roll
    return rand 1..sides
  end
end



# 3. Refactored Solution


#Seems pretty solid in my opinion.




# 4. Reflection

=begin
What is an ArgumentError and why would you use one?

ArgumentErrors are notices that can be included in codes to notify users of class parameters. In this challenge, we set up the die class, but would not want a number less than 1 to be passed through the class. To solve this issue, we include an ArgumentError that returns an error message if the user inputs a value less than 1.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

The ArgumentErrors.new method was pretty straight forward. The example provided in the challenge made it easy to implement.

What is a Ruby class?

A Ruby class is a collection of methods that create individual objects. The methods act as smaller parts to the whole class, which ultimately produces the desired object. Each method preserves a different function to be activitated in a given circumstance.

Why would you use a Ruby class?

We would use classes to execute similar methods with alike variables that may rely on one another. These methods can build upon each other, or result in separate object creation.

What is the difference between a local variable and an instance variable?

Local variables are not available outside the method while instance variables are available across methods within a particular class. Instance methods are preceded by the @ symbol.

Where can an instance variable be used?

Instance variables can be used within methods running inside a class.

=end