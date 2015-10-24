puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!"

[Return a Farmatted Address](https://github.com/zlschatz/phase-0/tree/master/week-4/address)

[Defining Math Methods](https://github.com/zlschatz/phase-0/tree/master/week-4/math)

#How do you define a local variable?
  #Local variables are defined within a method. They begin with a lowercase letter or _. These are the variables that will pass through the method. For example:
    #def method (variable_1, variable_2)
    #end
  #The two variables above are local variables. Outside of the method, they are not defined.

#How do you define a method?
  #You define a method with the following:
    #def method_name(x)
    #end
  #This is similar to functions, and are used to group repeatable statements into a single command. All methods take a variable and give a definition for the return output. If there is no return (like the example above), then it is an empty method.

#What is the difference between a local variable and a method?
  #Local variables are the variables stored within a method. The method is the fuction/action taking place with the information provided through the variables.

#How do you run a ruby program from the command line?
  #irb

#How do you run an RSpec file from the command line?
  #rspec ruby_file_name.rb

#What was confusing about this material? What made sense?
  #I ran into a few issues while trying to check my method and realizing that I was using puts instead of return. I'm not entirely sure as to the difference, but it seems as though methods simply require something to be returned.
  #Ruby is pretty straight forward because the syntax makes sense. It's not terribly tricky, as we use if / else and return throughout methods. These words act through their meaning. If x then y -- otherwise (else) z. In the end return a value. I like it so far.