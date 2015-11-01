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