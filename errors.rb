# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 16
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => After the puts statement, before the method end
# 6. Why did the interpreter give you this error?
# => Both the method and the while statement need to be closed by the keyword end

# --- error -------------------------------------------------------

def south_park(name)
end

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# => Error occurs in errors.rb file. Correct format would be to define the method or variable.
# 4. Where is the error in the code?
# => Name error
# 5. Why did the interpreter give you this error?
# => It is undefined.

# --- error -------------------------------------------------------

def cartman(x)
end

# 1. What is the line number where the error occurs?
# => Line 52
# 2. What is the type of error message?
# => Undefined Method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
# => Outlines the undefined method error - Object(NoMethodError)
# 4. Where is the error in the code?
# => Not defining method and including end keyword
# 5. Why did the interpreter give you this error?
# => It is undefined

# --- error -------------------------------------------------------

def cartmans_phrase(x)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 72
# 2. What is the type of error message?
# => Wrong Number of Arguments
# 3. What additional information does the interpreter provide about this type of error?
# => 1 output for 0 arguments
# 4. Where is the error in the code?
# => Need to include argument variable to be passed through the method
# 5. Why did the interpreter give you this error?
# => There is currently no argument

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => Line 87 and 91
# 2. What is the type of error message?
# => Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => Missing variable definition
# 4. Where is the error in the code?
# => offensive_message is not defined, and cartman_says is not called
# 5. Why did the interpreter give you this error?
# =>



# --- error -------------------------------------------------------

#def cartmans_lie(lie)
 # puts "#{lie}"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => Line number 112
# 2. What is the type of error message?
# => Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => 1 output for 2 arguments
# 4. Where is the error in the code?
# => Lines 108 and 109
# 5. Why did the interpreter give you this error?
# => Read for 2 arguments, when only 1 string was included when calling the method.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => Line 127
# 2. What is the type of error message?
# => String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# => TypeError due to *
# 4. Where is the error in the code?
# => The * between 5 and the phrase
# 5. Why did the interpreter give you this error?
# => Can't combine integer and string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# => Line 142
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => number is divided by 0
# 4. Where is the error in the code?
# => Division of variable
# 5. Why did the interpreter give you this error?
# => cannot divide an integer by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 158
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load the desired file
# 4. Where is the error in the code?
# => Main
# 5. Why did the interpreter give you this error?
# => There is no file "cartmans_essay.md" to reference


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
  #I think they're all pretty much equally difficult, as the keywords change when looking for the error. They tend to have the same structure, so the pattern of finding the error became easier as I progressed through the challenge. I did have difficulty with the Cartman lie exercise. Once I figured out that I needed to change the number of arguments, it made a lot more sense.

#How did you figure out what the issue with the error was?
  #I looked through the code to see what line the error was referenced, and did my best to recall previous work as well. I would find small errors, such as missing 'end' keywords and make the change. Terminal is also very helpful in stating where the error may occur and indicate if a keyword is needed, or a file is missing.

#Were you able to determine why each error message happened based on the code?
  #Occassionally I was able to read the code and spot the error almost immediately. I was actually impressed - but since the code was only 3 lines or so, it was pretty digestable. A couple of the excercises, I struggled to determine the error, including the cartman_says excercise. I believe the error involved the puts as a return, but I could not seem to fix the code.

#When you encounter errors in your future code, what process will you follow to help you debug?
  #I'll definitely reference the ruby tactic through terminal. Another process I found useful was to put the code into coderpad for quick and immediate edits. After reviewing errors through terminal, I was able to understand errors displayed in coderpad as well. The language for errors is very similar. Between these two methods I was able to complete the challenge.