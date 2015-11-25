# OO Basics: Student


# I worked on this challenge with Natalie Polen.
# This challenge took me [1.5] hours.


# Pseudocode

# create students array
# create 5 Student objects within
# Assign two properties to each Student - first_name and scores

# avg
# letter_grade

# linear_search
#   go through each array element to search for the search term
  #   if in array, return position; if not, return -1


# Initial Solution

# class Student
#   attr_accessor :scores, :first_name
#   attr_reader :avg

#   def initialize(first_name, scores)   #Use named arguments!
#     @first_name = first_name
#     @scores = scores
#   end

#   def average
#     total = 0
#     @scores.each {
#       |i| total += i
#       }
#     @avg = total / @scores.length
#   end

#   def letter_grade
#     if @avg >= 90
#       return 'A'
#     elsif @avg >= 80 && @avg < 90
#       return 'B'
#     elsif @avg >= 70 && @avg < 80
#       return 'C'
#     elsif @avg >= 60 && @avg < 70
#       return 'D'
#     else
#       return 'F'
#     end
#   end

# end

# def linear_search(array, search_term)
#   array.each_with_index do |student, index|
#     if student.first_name == search_term
#       return index
#     else
#       return -1
#     end
#   end
# end

# def binary_search(first_name, search_term, )

# end

# alex = Student.new("Alex", [100,100,100,0,100])
# mary = Student.new("Mary", [85,90,75,85,95])
# john = Student.new("John", [40,45,45,45,45])
# jacob = Student.new("Jacob", [81,88,80,85,80])
# ali = Student.new("Ali", [35,86,43,80,100])

# students = [alex, mary, john, jacob, ali]

# Refactored Solution

class Student
  attr_accessor :scores, :first_name
  attr_reader :avg

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    @avg = @scores.reduce(:+) / @scores.length
  end

  def letter_grade
    case @avg
      when 0..59
        return 'F'
      when 60..69
        return 'D'
      when 70..79
        return 'C'
      when 80..89
        return 'B'
      else
        return 'A'
    end
  end

end

def linear_search(array, search_term)
  array.each_with_index do |student, index|
    if student.first_name == search_term
      return index
    else
      return -1
    end
  end
end

alex = Student.new("Alex", [100,100,100,0,100])
mary = Student.new("Mary", [85,90,75,85,95])
john = Student.new("John", [40,45,45,45,45])
jacob = Student.new("Jacob", [81,88,80,85,80])
ali = Student.new("Ali", [35,86,43,80,100])

students = [alex, mary, john, jacob, ali]

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection


# What concepts did you review in this challenge?
# This was a great overall review of the Ruby language. We worked with arrays, objects and iterations. In particular, this was good for reviewing instance variables, and determining what can and cannot be called both inside and outside the class. It was also a good review of Ruby syntax while working with the .each and .each_with_index methods. Natalie was also able to teach me about the .reduce method, which is fantastic for refactoring!

# What is still confusing to you about Ruby?
# In this particular challenge, we learned a new concept dealing with linear and binary searches. After a bit of syntax issues, we were able to sort out the linear search and pass the tests. When we moved to the binary search, we were lost without much direction. The driver code originally helped guide us towards the number of arguments to include in the method -- but this release did not have any driver code to test against. After continuing research, we found quite lengthy case scenarios that use binary searches to target the index of a given element. I'll continue looking for additional explanations to fully understand this concept.

# What are you going to study to get more prepared for Phase 1?
# I definitely need to become more confident in the iteration syntax. I was slightly disappointed in myself, and do not want to feel that way when we start phase 1. I hope to review additional Ruby problems beyond the requirements to satisfy this week's challenges. All these concepts will eventually need to be used, so mind as well get a head start! This will only reinfornce the foundations of our Ruby knowledge while learning additional strategies.
