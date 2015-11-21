// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// FAILED TEST: Bob President votes not equal to 3
  // Iterate over votes object to see President: Bob input
  // Count the number of times President: Bob appears
  // Store Bob: 3 in VoteCount

// Repeat above for VP, Secretary and Treasurer votes

// Failed Test: Name elected candidate for each position
  // Determine the highest number of votes for a position
  // Add corresponding name to that position in the officers object


// __________________________________________
// Initial Solution

for (var student in votes) {
  var studentsVotes = votes[student];
  for (var position in studentsVotes) {
    var candidate = studentsVotes[position]
    if (voteCount[position].hasOwnProperty(candidate)) {
      voteCount[position][candidate] += 1;
    }
    else {
      voteCount[position][candidate] = 1;
    }
  }
}

for (var position in voteCount) {
  var candidateVotes = [];
  var candidates = voteCount[position];
  for (var candidate in candidates) {
    var votes = voteCount[position][candidate];
    candidateVotes.push([candidate, votes]);
  }
  officers[position] = candidateVotes.sort(function(a, b) { return a[1]-b[1]; } ).reverse()[0][0];
}


// __________________________________________
// Refactored Solution

for (var student in votes) {
  for (var position in votes[student]) {
    if (voteCount[position].hasOwnProperty(votes[student][position])) {
      voteCount[position][votes[student][position]] += 1;
    }
    else {
      voteCount[position][votes[student][position]] = 1;
    }
  }
}

for (var position in voteCount) {
  var candidateVotes = [];
  var candidates = voteCount[position];
  for (var candidate in candidates) {
    var votes = voteCount[position][candidate];
    candidateVotes.push([candidate, votes]);
  }
  officers[position] = candidateVotes.sort(function(a, b) { return a[1]-b[1]; } ).reverse()[0][0];
}


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// It can become confusing when using bracket or dot notation to keep track of what nest you are working in while iterating. To minimize this, we decided to set local variables with indicative labels to help guide us through the different levels of the nested objects. We also learned that it is best to use for...in while iterating over nested objects in JS. Once we figured out the proper syntax, we were able to successfully target the appropriate objects.

// Were you able to find useful methods to help you with this?
// Yup! .hasOwnProperty was a very useful method. This allowed us to determine whether a candidate had already received a vote fora particular position. Initially, we struggled to increase the votes, as the number of votes would be changed to 1 each time a new vote was cast. .hasOwnProperty helped solve this issue and increased the counter for total votes.

// What concepts were solidified in the process of working through this challenge?
// Navigating through nested objects is definitely clearer after this challenge. Taking it step by step, and digging through each level of the nested object was a good exercise in the challenge. This involved a bit of research as well. Writing bracket notation was also emphasized during this challenge, as to when quotations are to be included and excluded.


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)