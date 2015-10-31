# Pad an Array

# I worked on this challenge [by myself, with: Amaar]

# I spent [2 hours with Amaar, 1 hour solo, 1 hour office hours] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

#Coditions
  #minimum size <= length of the array should return array
    #pad([1,2,3], 3) should return [1,2,3]
  #array length < min_size, pad should return a new array, padded with final value to meet the min requirement
  #pad should always return a new object
  #pad! should modify the original array

# 0. Pseudocode

# What is the input?
  #Array, min_size (non-negative integer), optional   argument of what the array should be padded with

# What is the output? (i.e. What should the code return?)
  #IF condition 1 is TRUE, the original array will be returned
  #IF condition 2 is TRUE, the original array with the padded value up to the min number of elements

# What are the steps needed to solve the problem?
  #Define methods to abide by conditions 1 and 2
#create a condtion that accepts two arguments and returns the first if the second is <= array.length
#create a second condition that runs if array.length is less than min_size then returns the first argument plus the value as many times as neccesary to meet min_size


# 1. Initial Solution

=begin
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    (min_size - array.length).times do |i|
      array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if array.length >= min_size
    return new_array
  else
    (min_size - array.length).times do |i|
      new_array.push(value)
    end
    return new_array
  end

end
=end


# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if array.length < min_size
    (min_size - array.length).times {new_array.push(value)}
  end
  return new_array
end

def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    (min_size - array.length).times {array.push(value)}
  end
  return array
end

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

We were able to break the problem down into steps and address the various conditions. We verbally communicated the goals of the challenge, and translated that into pseudocode.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

At first we were off to a strong start, successfully navigating through our pseudocode. We encountered issues when trying to push the value back into the array. We struggled with this for quite some time before deciding to take a break from coding and revisit the issue later on.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

At first, it was not. We were not using the proper method to iterate through the array. After spending a few hours on the challenge, I joined an office hours session to learn more about iteration. This was very helpful to complete the challenge.

When you refactored, did you find any existing methods in Ruby to clean up your code?

The refactoring was primarily eliminating redundancies and condensing lines. This included removing the 'do' statement with {}.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think it's very readable! The new_array variable should make sense to anyone reading through the code.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods are ways of warning others that the code being run will result in changed arguments. In this challenge, the destructive (pad!) returned the changed array. The non-destructive (pad) was defined to return new_array so that we know the original array is not being changed.

=end