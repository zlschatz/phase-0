# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? list of names
# What is the output? (i.e. What should the code return?) groups of names by 5, 4 and/or 3 names
# What are the steps needed to solve the problem?
  # The list of names will be broken into squads (groups of names) and put into a cohort (collection of squads)
  # Place 5 names into a squad and push to cohort
  # Condition for final squad if there are less than 3 names left
  # Pull names from previous squad to complete final squad

# 1. Initial Solution


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


# 3. Refactored Solution

=begin

 def group(names_list)
  i = 0
  j = i
  cohort = []
  squad = []
  names_list.each {|x| squad = [] if i == 0} end

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

# 4. Reflection

=begin
Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes and no... I really like getting my hands into the code and seeing what direction I could take. At the same time, I do think I'm becoming better at mapping it out. I definitely need to spend more time pseudocoding in the future.

Was your approach for automating this task a good solution? What could have made it even better?

I feel as though I took the long way around in this one. When it came to refactoring, my code continued to break. I spent a lot of time on the intial solution, and it works the way I want it to. I believe I have the concepts and theory behind it, just not sure that I wrote it correctly. I'll be interested to see different approaches from other students in this challenge.

What data structure did you decide to store the accountability groups in and why?

I chose a series of arrays. Since I was only dealing with a single value (any given name) it made sense to push to an array.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Sometimes it can be just as challenging to refactor as it is to write the intial statement. I spent additional time attempting to refactor without much success. There definitely has to be a ruby method for the final conditions of pulling out the last names.

=end