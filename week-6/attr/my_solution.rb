#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  def important_method
    @name = 'Zach'
  end
end

class Greetings
  def initialize
    @NameData = NameData.new
  end

  def hello
    puts "Hello, " + @NameData.important_method
  end

end



# Reflection

=begin

Release 1: Read and Research

What are these methods doing?
The methods are defining variables that are being returning in the p code following the class. Each method defines an age, name and occupation within the class. We then change the information with the secondary methods.

How are they modifying or returning the value of instance variables?

The methods are modifying the value of the instance variables by setting them equal to a new argument. These arguments are passed through methods within the same class. The instance variables are repeated in each method - as a carry-over - and then set to be modified in the following method. The change_variable methods are redifined outside of the class. Once the change has been made, the class is called to print out all info, at which time the modified information is returned. Although we are making the actual changes outside of the class, the code includes methods to allow for these changes to be made to the instance variables.

Release 2: Identify the Changes

What changed between the last release and this release?

This second release removes the what_is_age method and replaces it with 'attr_reader :age'. This seems to function in the same way that defining the old method did. The other information - name and occupation - are still using the additional method. The output is exactly the same as the first release.

What was replaced?

The following method was replaced by attr_reader :age

def what_is_age
  @age
end

Is this code simpler than the last?

It's definitely simpler, but a bit less readable. Granted, I only just learned about attr_reader in this challenge so I assume that once familiar, this quickly becomes a shorthand version. It seems straightforward as attr_reader is using the symbol :age in place of the method definition.

Release 3: More Changes

What changed between the last release and this release?

The method defined following the class instance_of_profile.change_my_age is now instance_of_profile.age.

What was replaced?

The method change_my_age has been replaced by simply calling .age. At the same time, the attr_writer :age has been included in the class.

Is this code simpler than the last?

Similar to the previous release, I believe it is simpler if you are familiar with the symbol shorthand. There's less variables / methods being used in this version, which leads me to believe it is simpler. Good to understand the previous versions before moving to this one though.

Release 6: Reflect

I found this example in a stack overflow forum that is very useful to understand reader and writer acccessors.


------ Without Reader/Writer ------

class Person
  def name
    @name
  end

  def name=(str)
    @name = str
  end
end

------- With Reader/Writer ---------

class Person
  attr_reader :name
  attr_writer :name
end

------- With Accessor -------------

class Person
  attr_accessor :name
end

------------------------------

What is a reader method?

A reader method is a method that defines an instance variable within a given class. In the example above, we are defining @name through the name method. This can also be expressed through "attr_reader = :name".

What is a writer method?

Writer methods are methods that give an instance variable a value. In the example above, the writer method told us that an argument will give the @name variable a value.

What do the attr methods do for you?

Attr methods combine reader and writer methods into a single line. These should not be used every time, and only when both reader and writer are defined / used within a class.

Should you always use an accessor to cover your bases? Why or why not?

Nope! Making all instance variables changeable when we only want to read them can lead to issues withi debugging.

What is confusing to you about these methods?

Reading these methods can be a bit tricky. Through the first three releases, the final question was "does this make your code more or less readable?" I found that it becomes less readable for someone unfamiliar with the code's execution. Once understanding the execution, it made sense and I understood why someone would use these methods. I do believe that this will become more familiar over time and a good practice to maintain.

=end