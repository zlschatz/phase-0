# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin

1. Defining method assert
  1a. Method will return "Assertion failed!" message if condition is not true
  2a. yield indicates that we will go through the assert method multiple times for each variable change
2. name variable is equal to "bettysue"
  2a. Run assert method when name is "bettysue"
  2b. Run assert method when name is equal to "billybob"


=end


# 3. Copy your selected challenge here

def mode (array)
  hash = {}
  final_array = []
  array.each {|x| hash[x] = (hash[x] == nil ? 0 : hash[x] + 1)}
  greatest_num = hash.values.max
  hash.each {|x,y| final_array.push(x) if y == greatest_num}
  return final_array
end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

array_1 = mode.new([1, 2, 3, 4, 5, 5, 7])
assert {array_1.mode == 5}
assert {array_1.mode == 4}

# 5. Reflection

=begin

What concepts did you review or learn in this challenge?

In this challenge, I learned about using assert statements to replace driver code. This will be useful when it comes to debugging and refactoring solutions. Essentially, assert statements are another way to test code functionality. This is actually used in the week 8 JavaScript pairing challenge to test validity of the code. We define the assert function to run tests.


What is still confusing to you about Ruby?

Pertaining to this challenge - it was kind of odd going back through my code to find driver code used as tests. Majority of that code was not included in my final submissions, but now I understand that this should be kept in moving forward. I'm definitely not completely comfortable with assert yet, but can see the benefits in comparison to just testing true/false.


What are you going to study to get more prepared for Phase 1?

EVERYTHING RUBY! After the past couple weeks dealing with JavaScript and SQL, it's time to get back into the meat of Ruby. I definitely plan to explore the other review challenges, and revisit anything that seemed a bit shaky from weeks back. A personal goal would be to really nail down basics such as iterating, classes and instance/global variables before beginning phase 1. Week 9 should prove to be enough time to brush up on these lessons and get back in the groove of Ruby.

=end