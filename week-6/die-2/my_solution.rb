# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: number of possible outcomes, and the random return of one string
# Steps:
=begin
  - Define Die class
  - pass empty array through initialize method
  - set for sides method to count number of values within the array
    - set return for sides method to be .count of values within the array
  - Define roll method
    - return random string from array


=end


# Initial Solution
=begin
class Die
  def initialize(labels)
    @labels = labels

    if labels == []
      raise ArgumentError.new("Please pass through a set of values within the array.")
    end

  end

  def sides
    return @labels.count
  end

  def roll
    return @labels.shuffle.first
  end

end
=end


# Refactored Solution


class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new("Please pass through a set of values within the array.")
    end
  end

  def sides
    return @labels.count
  end

  def roll
    return @labels.sample
  end

end





# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

For the most part, the logic stayed the same. There are a couple changes pertaining to array methods called since we are dealing with strings as opposed to integers. The first difference is that we needed to change the sides method return to an integer value. The second change was that we could not use the random count from 1..sides. In this instance, we approached the array by shuffling and returning the first value. Again, this did not really change the logic, as the first die class challenge stood as a good model for revising towards this challenge. We were still using the same conditions, just different methods.

What does this exercise teach you about making code that is easily changeable or modifiable?

I have a strong feeling we'll be relying on past challenges to build skills, similar to this one. Likewise, developers rely on previous code and experiences to tackle a current challenge. Writing clean, readable and adaptable code will prove to be worthwhile in the long run.


What new methods did you learn when working on this challenge, if any?

I learned about the .sample method through some additional research. This method seems to act the same was that .shuffle.first or .shuffle.last would. It randomly selects a value from the array.


What concepts about classes were you able to solidify in this challenge?

Defining the local variable is vital while working through classes. At first, I received a couple errors that I was calling an undefined local variable. I then broke down the code, step by step to resolve the error.

=end