# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(array)
  num_array = array.grep(0..100)
  str_array = array.grep(String)
  return num_array, str_array
end

def my_hash_splitting_method(hash)
  return hash.each_slice(1) {|slice| p slice}
end

# Identify and describe the Ruby method(s) you implemented.
# The first Ruby method I implemented was the '.grep' method. This is used to grap a particular kind of element wtihin a given array. In this challenge, I used the .grep method to pull elements from the original array to return two new arrays. One array pulled all the integers, the other pulled all the strings.
# The second Ruby method I implement was the '.each_slice' method. Both the each_slice and each_cons methods operate similarly. These methods run the each method through a collection of elements yielding an array of the given number of elements. In this instance, the hash has sets of elements (name and age). The .each_slice(1) calls for the first set to be grouped and returned, followed by the second set, etc. The difference between each_slice and each_cons are that each_slice handles each element only once while each_cons can provide overlapping arrays.
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# The grep method is great! As seen in the challenge above, you implement by attaching .grep to an array / hash. The ( ) following the method are filled by the terms of what is being searched for. In this challenge, I searched for integers between 1 and 100, as well as Strings.
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# There are so many different methods that can act in very similar manners. I believe that the split could have been solved with a variety of different methods. I chose to use the .grep to split the array because it made most sense to me while executing. There is probably a more concise method to return separate arrays by integers and strings, but I chose this one.
# I also found that "The Well-Grounded Rubyist" is a great initial source for methods. Chapter 10 outlines several different methods, and almost condenses the vast amount of sources from Ruby-Docs or any Google search. This book is surely a primary source for Phase 0, and even becoming familiar with terms will help while sifting through additional research.
# Explaning research can definitely be a bit challenging. I constantly go off on tangents while jumping through Full Stack forums and flipping through pages - so explaning can be difficult.

