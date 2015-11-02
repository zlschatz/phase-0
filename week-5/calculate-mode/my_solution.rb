# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of integers / strings
# What is the output? (i.e. What should the code return?) The value that appears the most
# What are the steps needed to solve the problem?
  # Define a hash
  # Move values in the array to be keys in the hash
  # Set values to the keys that will distinguish number of occurences
  # Sort the keys to determine mode
  # Return value attached to the key mode

# 1. Initial Solution
=begin
def mode (array)
  hash = Hash.new
  new_array = []
  final_array = []
  array.each do |x|
    if hash[x] == nil
        hash[x] = 0
    else
        hash[x] = hash[x] + 1
    end
  end
  hash.each do |x,y|
      new_array == []
      new_array.push(y)
    end
    greatest_num = new_array.sort.last
  hash.each do |x,y|
    if y == greatest_num
      final_array.push(x)
    end
  end
  return final_array
end

=end
# 3. Refactored Solution

def mode (array)
  hash = {}
  final_array = []
  array.each {|x| hash[x] = (hash[x] == nil ? 0 : hash[x] + 1)}
  greatest_num = hash.values.max
  hash.each {|x,y| final_array.push(x) if y == greatest_num}
  return final_array
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

I used a hash in order to count the number of times a value was presented in the array. The hash allows you to attached a value to any given key. Through this, the goal was to create a set of keys and find the mode.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

This is definitely something that will take more practice. Going step by step makes sense, but I still find myself straying away from the pseudocode with other ideas. Sometimes it can be difficult to go back and revise the pseudocode while writing actual code.

What issues/successes did you run into when translating your pseudocode to code?

Determining the number of arrays / hashes that would be made seemed much easier at first. I ended up defining a few empty arrays at the start that I had not accounted for in my pseudocode.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

I used .each, .sort, .last while writing the initial solution. These are all methods that I've implemented before. While refactoring, I learned about .values and was able to tighten up lines by removing do and if.

=end