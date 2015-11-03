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
Did you learn any new methods? What did you learn about them?
What did you learn about accessing data in hashes?
What concepts were solidified when working through this challenge?

=end