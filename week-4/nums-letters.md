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