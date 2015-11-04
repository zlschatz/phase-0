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

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods represent real-world objects through state and behavior attributes. These pieces of code are given names and distinguished attributes along with several functions. They build upon one another. Instance variables are used throughout multiple methods as well.


When should you use instance variables? What do they do for you?

Instance variables are used within classes. These variables are defined within the methods of a given class to be used across multiple methods. Rather than defining a local variable in the class's methods, it is best to define instance variables. In the challenge, I used instance variables to carry values from previous methods into the following methods.


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is used to set conditions that return particular values, or trigger executions. In this challenge, I used a series of if/elsif/else statements to set conditions. This returned values of :high :low and :correct. I did not find it difficult to implement flow control in this challenge, but did spend additional time refactoring the statements. I took this as an opportunity to explore shortcuts in writing flow control. It may be a bit less readable, but I wanted to try it out.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?

It's best to return as symbols because they are instances of built-in Ruby class. These are unique returns for each condition. Symbols can also be used as hashes in a key -- so if we wanted to organize the guesses, we'd be able to do so. One of the major benefits - as pointed out in The Well-Grounded Rubyist - is the look of symbols. They're easy to read and identify within code. In this challenge, the symbols are easy to find. While reading this code, developers would quickly determine that the return would be one of the three symbols.



=end