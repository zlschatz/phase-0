// JavaScript Olympics

// I paired [by myself, with: Trevor] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up




// Bulk Up

var athletes = [
  ["Sarah Hughes", "Ladies' Singles"],
  ["Derek Jeter", "Baseball Champ"]
  ]

function win(){
  for (var counter = 0; counter < athletes.length; counter++){
  console.log(athletes[counter][0] + " won the " + athletes[counter][1]);
  }
}


win();


// Jumble your words

function reverse (string){
  var stringReverse = string.toString().split("").reverse().join("");
  console.log(stringReverse)
}

 reverse("string")


// 2,4,6,8

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var evenArray = [];

function even(a){
  for (var counter = 0; counter < array.length; ++counter) {
  if ((array[counter]) % 2 === 0){
    //array.push(array[counter]);
    //console.log(array[counter]);
    evenArray.push(array[counter]);
  }
  //console.log(evenArray);
  }
  console.log(evenArray);
}

even(array)


// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// After completing this challenge, I'm feeling confident using for loops moving forward. Loops and iterations have always been a concept I constantly review, but the for loops is making a lot of sense. I solified the structure of (beginning, end condition, increment) within the loop. It has also become apparent that console.log is used similarly to return in Ruby.


// What are constructor functions?
// Constructor functions are functions that take arguments and define variables for use outside of the function. In the final exercise, we defined name, sport and quote, to then run the function and return information about Michael Phelps. Constructors can store values and create multiple objects at the same time.


// How are constructors different from Ruby classes (in your research)?
// Constructors are different than Ruby classes, because they are a method on their own that can be called. On the other hand, Ruby classes hold methods to be executed together for a given output. So far, we've only used constructors to hold values to be returned from a given argument.