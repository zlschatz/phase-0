# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: card number
# Output: true or false return determining the validity of the card number
# Steps:

=begin

1. define initialize method
    # take the argument card_number
- define our card_number [instance] variable
    # create instance variable for card_number
- Include ArguementError message for card_number not equal to 16 digits

2. define method to double every other digit, beginning with the second to last digit
- put card_number into an array
  # look to iterate through card_number_array to see each value
- reverse the array
- select every odd index and double that value
  # if the index is NOT divisible by two then double that value

3. define a method to add up all the individual digits
- split the values with two digits (using some sort of instance variable)
  # look for doubled values that have a length of 2
  # split these values into separate digits
- Add up the individual digit values to the other digits for a total sum


4. define condition to return true/false of card_number validity
- IF digit total is divisble by 10, return true
- ELSE return false
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

=begin
class CreditCard
  def initialize(card_number)
    @card_number = card_number
    if @card_number.to_s.length != 16
      raise ArgumentError.new("Card number must be exactly 16 digits.")
    end
  end
  def double_every_other
    @card_number_array = []
    @doubled_values = []
    @dont_double = []
    @card_number_array = @card_number.to_s.chars.reverse
    @card_number_array.each_with_index do |value, index|
      if index % 2 != 0
        @doubled_values << (value.to_i * 2)
      else
        @dont_double << value.to_i
      end
    end
  end

  def sum_of_digits
    @double_digit_array = []
    @single_digit_array = []
    @double_digit_int_array = []
    @final_array = []
    @doubled_values.each do |value|
      if value.to_s.length == 2
        @double_digit_array << value.to_s.split('')
      else
        @single_digit_array << value
      end
    end
    @double_digit_array.flatten.each do |value|
      @double_digit_int_array << value.to_i
    end

    @final_array = @single_digit_array + @double_digit_int_array + @dont_double
    @sum = 0
    @final_array.each do |value|
      @sum+=value
    end

=begin
    p "----- original array -----"
    p @card_number_array
    p "----- doubled values -----"
    p @doubled_values
    p "----- don't double ------"
    p @dont_double
    p "----- doubled digit array -----"
    p @double_digit_array
    p "----- single digit array ------"
    p @single_digit_array
    p "----- double digit int array ------"
    p @double_digit_int_array
    p "----- final array ------"
    p @final_array


  end

  def check_card
    self.double_every_other
    self.sum_of_digits
    if @sum % 10
      p true
    else
      p false
    end
  end
end
=end

# Refactored Solution

class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.chars.reverse
    @final_array = []
    if @card_number.length != 16
      raise ArgumentError.new("Card number must be exactly 16 digits.")
    end
  end


  def double_every_other
    @card_number.each_with_index do |value, index|
        @card_number[index] = value * 2 if index.odd?
    end
  end


  def sum_of_digits
    @sum = @card_number.join.chars.map(&:to_i).reduce(:+)
  end

  def check_card
    double_every_other
    sum_of_digits
    @sum % 10 == 0 ? true : false
  end

end

#Reflection

=begin
What was the most difficult part of this challenge for you and your pair?

We ran into a (fairly large) speed bump towards the end of the challenge. We had gone through all the methods, and thoroughly defined each part of the challenge. At the very end, we noticed that we were testing on a broken return that always showed true. We then had to go back through and debug for what changes were correct, and which had to be redone. This added additional time, but we worked well together to see it through.

What new methods did you find to help you when you refactored?

Flatten was a great method that we came across. This allowed us to take the assortment of arrays and turn it into a singular array. We knew that this would be changed while refactoring, but it was a good way to keep us moving forward in our initial solution. &_to.i also helped turn the values back to integers while refactoring.

What concepts or learnings were you able to solidify in this challenge?

There is no way to .to_i or .to_s can be tricky while working with arrays. We want to convert the entire thing, but need to iterate through to see the individual values. That was vital in this challenge, and we learned this more than once.

=end