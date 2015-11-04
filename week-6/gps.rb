# Your Names
# 1)Zach
# 2)Karla

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# Defining our serving_size_calc method
def serving_size_calc(item_to_make, order_quantity)
  #creating a hash of legal arguments
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3
  # defining serving_size and serving_size_mod variables
  # accessing the value connect to a given key within the hash
  serving_size = library[item_to_make]
  # take the second argument and the serving_size variable to find the leftover ingredients

  if !library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size_mod = order_quantity % serving_size

  #iterating over the library hash
#   library.each do |food, qty|
#     #conditional statement for case when food key is not present within the hash
#     if library[food] != library[item_to_make]
# #       p error_counter += -1
#       raise ArgumentError.new("#{item_to_make} is not a valid input")
#     end
#   end

  # Raise an error when a food that DNE in the library





  # return of ArgumentError when food item does not match key in the current hash
#   if error_counter > 0
# #     custom error returned to user
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

# Case senario for return statements
  #case serving_size_mod
    # when there is no remainde
    if serving_size_mod == 0
    # returns statement that does not have leftover ingredients
      return "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}"
    end
    # return statement that DOES have leftover ingredients - includes a value for the leftover ingredients
    "Calculations complete: Make #{order_quantity/serving_size} #{item_to_make}, you have #{serving_size_mod} leftover serving."
end


#p serving_size_calc("pie", 7) == "Calculations complete: Make 1 of pie"

# =begin
p serving_size_calc("pie", 8)

p serving_size_calc("cake", 5)

p serving_size_calc("cake", 7)

p serving_size_calc("cookie", 1)

p serving_size_calc("cookie", 10)

#p serving_size_calc("THIS IS AN ERROR", 5)
# =end

#  Reflection

=begin
What did you learn about making code readable by working on this challenge?

The first step in making code readable is fully understanding what the current code is executing. Testing different break points within the code is a good way to see how the execution develops. Rather than attacking it in groups, move line by line to analyze the potential outcomes. Only once the code is comprehensive, will the refactoring be able to take place. Testing changes often is also vital to avoid confusion and code breaks.

Did you learn any new methods? What did you learn about them?

At one point, we looked up the .value_to method as neither of us were too familiar with it. We learned that .value_to would arrange values in an array. This was not our intent through the execution, and we ultimately eliminated the method from our code.

What did you learn about accessing data in hashes?

Accessing data in a hash is called in the same way that we access data in an array. The difference is that we call for the data by the key for a hash, and by the index for an array.

What concepts were solidified when working through this challenge?

One concept that was solidified was the return of an ArgumentError. We ran into some difficulties while refactoring the code, and realized that it had to be placed between our definitions of variables. The command 'raise' will act as a return for the ArgumentError. Accessing hash data was emphasized through this challenge as well. I believe I need a bit more work on this, but made great steps during the challenge.


=end