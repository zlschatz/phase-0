 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Play card higher than the opponent to collect all cards in the deck
// Overall mission: Play your next card against the opponent's next card
// Goals: Play the higher card enough times to collect call the cards in the deck
// Characters: Player 1 vs the Computer
// Objects: Card Deck, Player 1 Cards, Player 2
// Functions: Distribute cards, Play card, winner announcement

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

function Fighter(left, right, block){
  this.left = left,
  this.right = right,
  this.block = block;
}

var Player_1 = new Fighter(100, 85, 100);
var Computer = new Fighter(90, 80, 100);

function rest(){
  console.log("Your health is now up to " + (Player_1.block + 10));
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




// Refactored Code






// Reflection
//
//
//
//
//
//
//
//