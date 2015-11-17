/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with: Chris]
This challenge took me [1.5] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {};

// gradebook["Joseph"] = {};
// gradebook["Susan"] = {};
// gradebook["William"] = {};
// gradebook["Elizabeth"] = {};

// gradebook["Joseph"]["scores"] = scores[0];
// gradebook["Susan"]["scores"] = scores[1];
// gradebook["William"]["scores"] = scores[2];
// gradebook["Elizabeth"]["scores"] = scores[3];

// gradebook["addScore"] = function(name, score){
//   gradebook[name]["scores"].push(score);
//   };

// gradebook["getAverage"] = function(name){
//   (average(gradebook[name]["scores"]));
// };

// var ave = 0;

// var average = function(array){
//   for(var counter = 0; counter <= array.length - 1; counter ++){
//     ave = array[counter] + ave;
//   }
//   console.log(ave/(array.length));
// }

// gradebook.getAverage("Joseph");





// __________________________________________
// Refactored Solution

var gradebook = {};

gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};

gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook["addScore"] = function(name, score){
  gradebook[name]["testScores"].push(score);
  };

gradebook["getAverage"] = function(name){
  (average(gradebook[name]["testScores"]));
};

var ave = 0;

var average = function(array){
  for(var i = 0; i <= array.length - 1; i ++){
    ave = (array[i] + ave);
  }
  (ave / (array.length));
}



// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// First off, I learned that adding functions to objects is a thing. I enjoyed this challenge because we were going through the levels of adding to and manipulating objects. In the end, we used all the objects to work together and execute a function. I learned that as long as you're inside the object, you can access other objects and functions within. This will prove to be very useful!

// How did you iterate over nested arrays in JavaScript?
// We used a 'for' loop to iterate over the nested array. We had the option to use a 'while' loop, but preferred the built-in counter used in 'for' loops. This made it easy to set up the loop to look at each individual element while solving for the average.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// None for this challenge, but we did a quick review on push() at one point. I still need to improve my syntax within JS as opposed to Ruby -- sometimes I found myself writing/thinking in Ruby during the challenge. Nonetheless, still improving!




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)