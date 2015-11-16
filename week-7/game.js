 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Play card higher than the opponent to collect all cards in the deck
// Overall mission: Player_1 boxer is up against the computer -- your mission is to knockout the computer player
// Goals: initiate the correct hit and knockout the computer player
// Characters: Player 1 vs the Computer
// Objects: Player 1 Boxer, Computer Boxer
// Functions: Play - used to hit the opponent, Rest - used to defend against opponent

// Pseudocode
// - Define Fighter function
    // take arguments for left, right and block
      // left => left hook, right => righthand jab
// Set variables for players and arguments
// Define function for rest
  // when rest is called, +10 to fighter's block level
// Set play variable to function for action
    // play function accepts argument hit
    // IF hit is 'left' determine if left hook knocks out opponent
    // IF hit is 'right' determine if righthand jab knocks out opponent
// Notify the player if they have won


// Initial Code

// function Fighter(left, right, block){
//   this.left = left,
//   this.right = right,
//   this.block = block;
// }

// var Player_1 = new Fighter(100, 85, 100);
// var Computer = new Fighter(90, 80, 100);

// function rest(){
//   console.log("Your health is now up to " + (Player_1.block + 10));
// }

// var play = function(hit){
//   if (hit === 'left'){
//     console.log("Nice left hook!");
//     Computer.block = Computer.block - Player_1.left;
//       if (Computer.block <= 0){
//         console.log("You knocked him out!")
//       }
//       else{
//         console.log("He's still standing");
//           }
//       }
//   else{
//     console.log("That righthand jab won't cut it this time.")
//   }
// }

// rest()
// play('right')
// play('left')




// Refactored Code

function Fighter(left, right, block){
  this.left = left,
  this.right = right,
  this.block = block;
}

var Player_1 = new Fighter(100, 85, 100);
var Computer = new Fighter(90, 80, 100);

function rest(){
  Player_1.block = (Player_1.block + 10)
  console.log("Your health is now up to " + Player_1.block);
}

var play = function(hit){
  if (hit === 'left'){
    console.log("Nice left hook!");
    Computer.block = Computer.block - Player_1.left;
      if (Computer.block <= 0){
        console.log("You knocked him out!")
      }
      else{
        console.log("He's still standing");
          }
      }
  else{
    console.log("That righthand jab won't cut it this time.")
  }
}

rest()
play('right')
play('left')




// Reflection
// What was the most difficult part of this challenge?
// One of the more challenging parts of creating the game was simply conceptualizing what to make. At first, I made the card game 'war' but realized that there weren't commands/functions necessary to complete the challenge. I played around with a few different ideas -- but that was by far the most challenging part. At this point in the week, we've worked with the various components of this challenge throughout previous exercising -- bringing them together was a welcomed practice.

// What did you learn about creating objects and functions that interact with one another?
// Creating objects and functions that interact with one another feels a bit easier in JS than previous weeks with Ruby. The variables can be defined outside of a function, and passed through with a defined value. In my game, I define left, right and block with different values to compete against the computer opponent. These values are then used and compared within the play function. Setting up the first Fighter function acts as an initializer for the following functions.


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// At this point, my game is very simple. I spent a majority of my time coordinating the objects to interact with one another, avoid complexity within the play senarious. That being said, I did learn about new built-in methods while researching for my game. One in particular that I hope to implement in the future would be the incorporation of Math methods. I hope to improve my game in the future with descriptive calculations for power behind a hit and how that can affect the oppenent's block in various ways. I feel as though the eval() method could be useful for allowing a player to know their hit level / rest level -- but when I tried to implement the code would break.


// How can you access and manipulate properties of objects?
// There are a couple different ways to access properties of objects. In my game, I access properties with dot notation. A couple examples of this is the Computer.block variables that determine whether the hit level has overcome the block level to knockout the opponent. We can then manipualte the defined variable by changing its value within the function.



