// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Zach"
console.log(name)

// Program for Food

var favoritefood = food(prompt("What is your favorite food?", ""));
alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var i=1; i<=100; i++) {

  if (i % 3 == 0 && i % 5 == 0){
    console.log("FizzBuzz")
  }

  else if (i % 3 == 0){
    console.log("Fizz");
  }

  else if (i % 5 == 0){
    console.log("Buzz");
  }

  else
    console.log(i)
}


// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  return (Math.min(a, b));
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Zach",
  age: 23,
  foods: ["Cheeseburger", "Pizza", "Steak"],
  quirk: "Always sleep with the AC on HIGH"
}