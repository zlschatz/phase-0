# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integer
# What is the output? (i.e. What should the code return?) commas-separated integer as a string
# What are the steps needed to solve the problem?
# define condition to change integer to string
  # integer_to.s
# define condition to include commas
  # IF integer.length > 3
  # activate condition to include commas every 3 digital from the left

# 1. Initial Solution

=begin
def separate_comma(number)
  if number.to_s.length < 4
    return number.to_s
  else
    new_number = []
    i = 1
    number.to_s.reverse.split('').each do |x|
      new_number.push(x)
      if i % 3 == 0
        new_number.push(",")
      end
      i = i + 1
    end
    return new_number.reverse.join
  end
end
=end



# 2. Refactored Solution

def separate_comma(number)
  number = number.to_s
  if number.length < 4
    return number
  else
    new_number = []
    number.reverse.split('').each_with_index do |x, i|
      new_number.push(x)
      if (i + 1) % 3 == 0
        new_number.push(",")
      end
    end
    return new_number.reverse.join
  end
end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

My first steps were to determine the various conditions that would have to be passed to insert commas. The first was that if there were less than 4 digits, no changed needed to be made. Next was tackling the insertion of commas for integers with 4 or more digits. After working on the group challenge, I had a good idea of how to split the integer's digits into unique strings. At this point, I ran into issues until I began experimenting with the inclusion of a counter. After figuring out the i = 1 counter to insert a comma, I realized that counting left to right would be easier. This led me to reverse the string before inserting the comma. Other approaches included a long series of if/else cases, but become very redundant.

Was your pseudocode effective in helping you build a successful initial solution?

It was useful while thinking out the various conditions to address throughout the challenge. In the end, I found myself moving through the code and testing possible solutions rather than dwelling on the details of the pseudocode. Sometimes I would stop and write comments as well to recall certain thoughts/ideas when running a possible solution.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

The Ruby method I implemented while refactoring was the .each_with_index method. This method allowed me to move the i counter to be within the iteration as opposed to living locally outside the iteration. Implementing the method cut down on the number of lines, and it does make sense. I did not find that it changed the way my code works, as it's simply reformatting the way it is read. I believe that my intial code may be easier to read by a developer unfamiliar with the project - but the refactored way is not difficult to understand either. While implementing this method, I did have issues correclty placing the i within the iteration. Took a few tries, but I figured it out.

How did you initially iterate through the data structure?

Right from the start I was iterating through an array by using each. I determined that I would have to count each integer as a separate string. The best way to do this was by implementing the .each iteration and separating the integers.

Do you feel your refactored solution is more readable than your initial solution? Why?

Not necessarily... I prefer the intial syntax because it feels more like my train of thought than a finalized product. If someone were reading my code, it's easier to understand the intial solution. Nonetheless, they both function in the same manner.

=end