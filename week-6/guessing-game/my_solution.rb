# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: symbole signifying :low, :high or :correct; statement true/false whether the previous guess was correct
# Steps: Below

=begin

1. define intialize method
- set local variables
- raise ArgumentError

2. define GuessingGame method
- takes argument of integer guess
- IF guess is > answer, return :high
- IF guess == answer, return :correct
- IF guess < answer, return :low

3. define GuessingGame.solved? method
- IF last guess was correct
- return true
- IF last guess was incorrect
- return flase

=end


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer

    if answer < 1
      raise ArgumentError.new("Please guess an integer value greater than zero.")
    end

  end

  def guess(guess)
    @guess = guess
    if @answer < guess
      return :high
    end

    if @answer > guess
      return :low
    end

    if @answer == guess
      return :correct
    end

  end

  def solved?
    if @answer == @guess
      return true
    else
      return false
    end

  end

end

=end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end


  def guess(guess)
    @guess = guess

    if @answer < guess
      :high
    elsif @answer > guess
      :low
    else :correct
    end

  end

  def solved?
    @answer == @guess ? true : false
  end

end

#Reflection