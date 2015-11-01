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
def group(names_list)
  i = 0
  j = i
  cohort = []
  squad = []
  names_list.each do |x|
    if i == 0
      squad = []
    end

    squad.push(x)

    i = i + 1
    j = j + 1

    if j == names_list.count
      if i >= 3
        cohort.push(squad)
      else
        person1 = cohort.last.pop
        person2 = cohort.last.pop
        squad.push(person1)
        squad.push(person2)
        cohort.push(squad)
      end
      return cohort
    end

    if i == 5
      i = 0
      cohort.push(squad)
    end

  end

  return cohort

end
=end

# 3. Refactored Solution




# 4. Reflection