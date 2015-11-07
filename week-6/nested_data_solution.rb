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