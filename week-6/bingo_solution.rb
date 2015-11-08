# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
- define method to generate a letter from b, i, n, g, o
- define method to generate a number 1..100
- join the letter and number together

# Check the called column for the number called.
- iterate through column for given letter
- IF B, check the first element of each array
- IF I, check the second element of each array
- IF N, check the third element of each array
- IF G, check the fourth element of each array
- IF O, check the fifth element of each array

==> The above would work, but is too complex. Rework in initial solution


- determine whether number is in that column (include?)

# If the number is in the column, replace with an 'x'
- IF the number exists (replace?) with 'x'

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
- print board to console
- move to new line for each array

=end
# Initial Solution

=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters = [:b, :i, :n, :g, :o]
    @bingo_letter = [ :b, :i, :n, :g, :o].sample
    @bingo_number = rand 1..100
  end

  def number_picker
    return @bingo_letter.to_s + @bingo_number.to_s
  end

  def number_checker
    @bingo_column = @bingo_letters.index(@bingo_letter)

#initial work:
  #[@bingo_board[0][@bingo_column], @bingo_board[1][@bingo_column], @bingo_board[2][@bingo_column], @bingo_board[3][@bingo_column], @bingo_board[4][@bingo_column]].map do |value|
      #  if value == @bingo_number
       #   value = 'X'
       # else
        #  value
      #  end

    @bingo_board.map! do |row|
      if row[@bingo_column] == @bingo_number
        row[@bingo_column] = 'X'
      end
      row
    end
  end

  def board
    @bingo_board
    end
  end

end
=end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters = [:b, :i, :n, :g, :o]
    @bingo_letter = [ :b, :i, :n, :g, :o].sample
    @bingo_number = rand 1..100
  end

  def number_picker
    return @bingo_letter.to_s + @bingo_number.to_s
  end

  def number_checker
    @bingo_column = @bingo_letters.index(@bingo_letter)
    @bingo_board.map! do |row|
      if row[@bingo_column] == @bingo_number
        row[@bingo_column] = 'X'
      end
        row
    end
  end

  def board
    number_picker
    number_checker
    @bingo_board.each do |r|
      puts r.each {|p| p }.join(" ")
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

#p new_game.number_picker
#p new_game.number_checker
new_game.board

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

In the end, my pseudocode ended up being quite different from my intial / refactored solutions. At first, I began working with the concept of a series of IF statements regarding the selected letter. My thinking was that I would set conditions for IF :b is randomly selected, then look to see if the number matches one of the elements with an index of 0 in each row. After beginning to write my intial solution, I realized it would be a smoother process to iterate through the arrays by looking at position based on the randomly selected letter.

In terms of difficulty pseudocoding - I thought it was an interesting experience because I was literally talking to myself aloud, then writing down my thoughts. I enjoy the process more while pairing as it's a good way to think together through a challenge. I've found success with my style of pseudocoding by laying out the methods that will be defined, then including details for each method. I've used this tactic while pairing as well, and found success working with it. At first, I struggled with pseudocoding when it was introduced in week 4 and have felt improvement in this area. Definitely helps build structure before diving into the code.


What are the benefits of using a class for this challenge?

By using a class, we are able to group the methods and run them together. In this challenge, the BingoBoard class contains methods that define instance variables, randomly select a number/letter pair, search for the corresponding number in a given row. By using a class, we are able to use these methods to return the new board as well. This also enables the code to carry over instance variables from one method to another. Instance variables are defined to hold values that will be reused in following methods. For example, @bingo_number is defined by a random selector, then used in the number_checker method to determine whether it is present on the board.


How can you access coordinates in a nested array?

Here's a short example to explain accessing coordinates of a nested array:

array = [[1, 2, 3], [4, 5, 6]]

If we wanted to access '4' it would look like this:
array[1][0]

Similarly to a normal array, we access with [] and a sub_array is given an index value. In this case, [1, 2, 3] has the index of 0, and [4, 5, 6] has the index of 1. We can select values within these sub arrays by adding another array selector. So array[1][0] will look at the sub array with an index of 1, and the value within that sub array that has an index of 0.

In this challenge, my intial solution involves accessing coordinates of the nested arrays. This can be simplified by iterating over the arrays and targeting coordinates with instance variable designation.

What methods did you use to access and modify the array?

I used the .index method to determine what column the program would look at to find a matching value. Once the column was determined, I then used the .map method to access the @bingo_board array and modify values. Iterating through the array allows us to use the @bingo_column designation to search for values. The .map method is the way we are able to change the values to 'X'.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I spent some time in the Ruby Docs reviewing .split and .slice - even though I did not include these it was a good time to review. I thought I would be able to use either method to return the sub arrays on indvidual lines to look like a board. I came to learn that these methods are to be used over strings, and cannot divide out sub arrays based on their index.


How did you determine what should be an instance variable versus a local variable?

Before beginning the challenge, I thought about when to use instance vs local variables. Any variable that I would want to use across multiple methods would have to be an instance variable. Others that are only used within a singular method can be defined locally. That being said, all the variables used within my code cross over multiple methods, therefore, they are defined as instance variables.


What do you feel is most improved in your refactored solution?

My refactored solution focuses on cutting down IF statements and including a new layout for the returned board. At first, I had the thought of setting senarios for each letter being selected. My refactored solution removes these senarios and group them together into iterations. I also played around with ternary operators, but decided that the IF statements being used lead to better readability.

=end