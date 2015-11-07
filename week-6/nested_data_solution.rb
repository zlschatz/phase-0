# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================

p hash [:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| p inner + 5}
  else
  p (element + 5)
  end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer_element|
        third_layer_element << "ly"
      if third_layer_element.is_a?(Array)
      third_layer_element.each do |last_layer_element|
        last_layer_element << "ly"
        end
        third_layer_element.delete("lyly")
      end
      end
    else
      inner_element << "ly"
    end

end

#Reflection
=begin

What are some general rules you can apply to nested arrays?

Here's an example of a nested array:
nested_array = [1, ["inner", "array"], 2, 3]
In this example, the nested array ["inner", "array"] has the index of 1. It is seen as one element within the nested_array. It can be returned by calling nested_array[1]. Elements inside the nested array can be selected with an additional index: nested_array[1][0].


What are some ways you can iterate over nested arrays?

You can iterate over nested arrays by making changes to elements within each array. This involves iterating further into deeper layers within the original array. In the end, you are able to manipulate each value - similarly to iterating through a typical array - by adding conditions. These conditions determine whether an an array exists within the current array level. This can become confusing, so it's best to be clear while labeling!

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

It took us longer than expected to complete the third release. We were using .each and returning the values - but not in an array. Then we tried using .collect with no success. After a while, we came across .map. Neither of us had used this before, but will definitely be sure to now! We also made .map destructive (!) to change the values of the original array.


=end