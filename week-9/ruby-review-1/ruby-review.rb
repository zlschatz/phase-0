# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Initialize flavors array to be carried throughout the entire class
# Define pez_count method
  # Count the length of the flavors array
  # This will return the current number of Pez
# Define see_all_pez method
  # Display flavors of each Pez when the method is called
# Define add_pez method
  # set method to accept an argument (new_flavor)
  # change flavors array to include the new_flavor
# Define get_pez method
  # return the Pez type at the first position in the flavor array
    # This simulates the next available piece given to someone


# Initial Solution

# class PezDispenser

#   def initialize
#     @flavors = flavors
#   end

#   def pez_count
#     @flavors.length
#   end

#   def see_all_pez
#     puts @flavors
#   end

#   def add_pez(new_flavor)
#     @flavors = @flavors.push(new_flavor)
#   end

#   def get_pez
#     return @flavors[0]
#   end

# end



# Refactored Solution

class PezDispenser
  attr_accessor = :flavors

  def pez_count
    @flavors.length
  end

  def see_all_pez
    puts @flavors
  end

  def add_pez(new_flavor)
    @flavors = @flavors.push(new_flavor)
  end

  def get_pez
    return @flavors[0]
  end

end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


# Reflection

# What concepts did you review in this challenge?
# This challenged involved basic review of creating a class, and making a series of methods that use instance variables to build upon one another. Although not terribly difficult, this was a useful challenge to review the basic foundations of a class.

# What is still confusing to you about Ruby?
# I think I've got this part down! In the refactoring, I went back through to include attr_accessor in place of the initialize method. Definitely feeling good about setting up Ruby classes moving forward.


# What are you going to study to get more prepared for Phase 1?
# EVERYTHING THAT IS RUBY! Can't have enough review -- hoping to go back through the other review exercises this week.

