<a href="https://github.com/zlschatz/phase-0/blob/master/week-4/defining-variables.rb">Challenge 4.2.1 Defining Variables</a>
<a href="https://github.com/zlschatz/phase-0/blob/master/week-4/simple-string.rb">Challenge 4.2.2 Simple Strings</a>
<a href="https://github.com/zlschatz/phase-0/blob/master/week-4/basic-math.rb">Challenge 4.2.3 Basic Math</a>

<h3>Release 0</h3>

What does puts do?

Puts writes onto the screen whatever comes after it. For exmple: "puts 3" would write the number 3 on the screen. You can also puts strings of letters and words.

What is an integer? What is a float?

An integer is defined as a number without a decimal point. Numbers with decimal points are referred to as floating-point numbers or floats. Some integers could be: 5, 923082, 0 and -39482. Some floats could be: 391.543, -0.00001, -294.294 and 0.0.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Simply put, integer division does not display decimals (remainders) when solving an equation while float division does. Integer division always rounds down as well. For example, with integer division, 9 / 2 = 4. Typically, we would believe this to equate 4.5, but integer division dicatates that we must round down. In order to solve for a float, one of the given numbers must be written as a float. See below as an additional reference.

  9.0 / 2 = 4.5 (float division)
  9 / 2.0 = 4.5 (float division)
  9 / 2 = 4 (integer division)

Many people will ask - why wouldn't we want to always display float division to be exact? There are many instances where integer example is the better option.

Let's say we want to buy some pizza pies for dinner... If each pizza pie costs $10 and we have $25 to spend, how many full pies can we purchase? Integer math tells us 25 / 10 = 2 pies.

<h3>Release 2</h3>

```ruby
irb(main):001:0> 24 * 365
=> 8760
irb(main):002:0> 60 * 8760
=> 525600
irb(main):003:0> 525600 * 10
=> 5256000
irb(main):004:0>
```


<h3>Reflection</h3>

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby follows as set of instructions to execute basic math problems such as addition, subtraction, multiplication and division. These functions are defined by various symbols: + - * / . Each acts in the way we would expect, with the exception of division pertaining to integers.

What is the difference between integers and floats?

As mentioned in detail above, integers are non-decimal point numbers and floats are numbers with decimal points. The decimal point can define a number as an integer or a float. You can also define a variable as a float by attaching ".to_f" at the end of the variable.

What is the difference between integer and float division?

As an overview of the difference, please refer to the following three examples:

  9.0 / 2 = 4.5 (float division)
  9 / 2.0 = 4.5 (float division)
  9 / 2 = 4 (integer division)

Division with integers round down to the whole number while floats display the decimal point value.

What are strings? Why and when would you use them?

Strings are objects that typically respent characters to display letters and words. We use these as values for variables. For example, I defined the "my_name" variable as "Zach" -- whenever "my_name" is called, "Zach" will appear in its place.

What are local variables? Why and when would you use them?

Local variables are variables defined in the unique ruby files created. During this challenge, we defined local variables such as name, age, sum1 and sum2. We use them to retain values that will be used throughout the page. These can also be unique to a user - for example, sites prompt users to create profiles to store local variables and send greetings by name.

How was this challenge? Did you get a good review of some of the basics?

This was a great review of the basics. I felt comfortable navigating through the challenge, and remember some of the material from my preparation for the DBC interview. I enjoy writing in ruby -- I feel as though the language makes sense.