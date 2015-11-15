// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ryan Zell.

// Pseudocode

//What is the input? positive integer
// What is the output? the integer separated by commas
// What are the steps needed to solve the problem?
  // 1. define a function separateComma
    // 1a. pass the number through the function
    // 1b. define variable number
    // 1c. define variable number as an array and split each individual digit
  // 2. Set conditions for commas
    // 2a. IF number is less than 4 digits, return number
    // 2b. ELSE look to iterate through array to place commas
    // 2c. Implement LOOP that inserts comma after last 3 elements in the array
    // 2d. Continue LOOP to insert commas every 4 elements after the first comma is placed
    // 2e. Return integer with commas


// Initial Solution
// function separateComma(number){
//   var number = number;
//   var digits_rev_array = (""+number).split("").reverse();
//   if (number.length < 4) {
//     console.log(number);
//   }
//   else {
//     var counter = 0;
//     var len = digits_rev_array.length;
//     for (counter = 0 ; counter < len; counter++){

//       if (counter == 3){
//         digits_rev_array.splice(3, 0, ",");
//       }

//       else if (counter % 3 == 0 && counter !=0){
//         digits_rev_array.splice(counter + 1, 0, ",");
//         }
//     }
//   }
//   var final_number = digits_rev_array.reverse().join("")
//   console.log(final_number);
// }



// Refactored Solution

var commaNumber = function(number) {
    var number_array = number.toString().split('');
    var at_index = -3;
    while (number_array.length + at_index > 0) {
        number_array.splice(at_index, 0, ',');
        at_index -= 4;
    }
    console.log(number_array.join(''));
};


// Your Own Tests (OPTIONAL)

// n/a


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Our original approach was to deal with the problem the same way we had with Ruby. The pseudocode breakdown stayed practically the same as well. Once we were beginning the initial solution, our perspective changed as we were limited in our knowledge of iterating over arrays in JavaScript. This led to additional research to use loops such as for and while. For our intitial solution, we maintained the practice that if the integer was less than 4 digits, we would simply print the integer -- otherwise a series of conditions would be put into affect.

// What did you learn about iterating over arrays in JavaScript?
// There's no each method that iterates over an array in JavaScript. Instead, we had to rely on 'for' and/or 'while' loops to look at each individual digit. In these loops, we set conditions for the iteration. This differed from Ruby's iteration that looks to execute a block of code. Once we understood the syntax of JS iterations, it made much more sense for implementation. That being said, we did spend a significant amount of time working on basic syntax and ultimately decided to take a break and return to the code on our own time.

// What was different about solving this problem in JavaScript?
// I'm not sure whether this was due to JavaScript, or just a better grasp on code at this time, but we were able to complete the challenge without creating a new array. In the Ruby exercise, I relied on pushing numbers into a new array to place the comma and increase the counter index. That being said, I didn't see any glaring differences in solving this challenge. The biggest must have been the syntax implemented -- but evidently it would differ as JavaScript and Ruby are two seperate languages. Because of this, we used different statements for iterating (for & while vs. .each).

// What built-in methods did you find to incorporate in your refactored solution?
// The methods used in our refactored solution was actually the same as our initial solution. The problem with our initial solution was that it broke once a 10 digit integer was passed through the function. After some time off from the challenge, my pair was able to make a solve for this in our refactored solution by including an at_index variable that would increase the counter to include the new array elements. Across both solutions, we used splice(), join(), and toString().


