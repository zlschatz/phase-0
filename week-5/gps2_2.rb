#GPS 2.2 Challenge


# PSEUDOCODE:
# -----------

# What is your main goal / task?

# What methods do you need for this?

# Do you need to initialize any variables or contianers for your methods to use?
# (Outside of the methods)

# Then for each method...
# 1. What is the expected input?
# 2. What is the expected output?
# (this can be updating something without a return)
# 3. What are the steps to turn input into output? (most important)


# initializers
# ------------
# 1. Initialze an empty hash 'list_items'.


# add_item
# --------
# Input: 'item_name' as a string, and 'item_qty' as an integers.
# Output: Update the 'list_items' has with the new item.

# 1. Add the new item to the 'list_items' hash, where the item_name is the key, and the item_qty is the value.


# delete_item
# -----------
# Input: 'item_name' as a string
# Output: Update the 'list_items' that does not include 'item_name'

# 1. Remove the 'item_name' from the list_items hash
# 2.
# 3.

# update_quantity
# ------------
# Input: 'item_name' as a string, 'item_qty' as an integer
# Output: Updated 'list_items' hash.

# 1. Revise 'item_name' quantity by changing the integer value
# 2.
# 3.




# display_list
# ------------
# Input: none
# Output:

# 1.
# 2.
# 3.






# INITIAL CODE:
# -------------
$list_items = {}

# local_variable
# - only usable in the scope (aka container, aka method) that its defined.

# $global_variable
# - visible / usable everywhere

# CONSTANT
# - is a global variable that you cant change once you set it.


def add_item(item_name, item_qty)
#   $list_items[item_name] = item_qty
  # my_hash[key] = value
  # This will create a NEW key value pair
  # OR update (aka replace) the value for an existing key.

  #   my_hash[key] += value
  #   will INCREASE the value for an existing key.
  if $list_items.include?(item_name)
    # Increase that item
    $list_items[item_name] += item_qty
  else
    # Create the new item
    $list_items[item_name] = item_qty
  end
end

def update_item(item_name, item_qty)
  $list_items[item_name] = item_qty
end


def delete_item(item_name)
  $list_items.delete(item_name)
end


def display_list
  $list_items.each do |item_name, item_qty|
    puts "You need to purchase #{item_qty} #{item_name}"
  end
end

# DRIVER CODE:
# ------------

add_item("lemonade", 2)
add_item("tomatoes", 3)
add_item("onions", 1)
add_item("ice cream", 4)
display_list
delete_item("lemonade")
display_list
update_item("ice cream", 1)
display_list
# => {"apples" => 6}


# Reflection
# ---------------

# What did you learn about pseudocode from working on this challenge?
# => Above all else, keep it simple! While first learning to pseudocode, it's best to be concise and then go back to include detail. Last week I had difficulty establishing a base for pseudocode in the pairing challenge. This time, the guide helped establish ground rules for psuedocode and lead our pair in the right direction.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => At the beginning, we discussed what the final product would look like to use an array as opposed to a hash. After reading through the instructions, we quickly noted that the major tradeoff would be only displaying a set of values in an array, as opposed to a list of items and corresponding quantities in a hash. We then decided to move forward to open an empty hash in our first step.

# What does a method return?
# => A method will return a modified argument or result when it is called. In our challenge, we used methods such as add_item to include the 'item_name' and 'item_qty' in the grocery list. We then explored a display_list method to return the list items that had been added.

# What kind of things can you pass into methods as arguments?
# => You can pass 'strings' and integers into methods as arguments.

# How can you pass information between methods?
# => Passing information between methods can be done by defining variables beyond the local level. In our challenge, we used $global_variables to be passed between methods. These variables are defined outside of the method, to be used across multiple methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# => One concept that was solidified was the difference and use of local, global and constant variables. We took time to distinguish amongst the different types, as this is a vital component of developing. One concept that I will continue to explore further is proper technique of pseudocoding. I need to remember to keep it simple and straightforward. It's very easy to fall down a rabbit-hole while pseudocoding.
