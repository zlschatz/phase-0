# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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