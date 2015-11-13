// Manipulating JavaScript Objects

// I worked on this challenge: [by myself]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {}
adam.name = "Adam";
adam.spouse = terah;


terah.spouse = adam;
terah.weight = 125;
delete terah["eyeColor"]
terah.children = {}
terah.children.carson = {name: "Carson"}
terah.children.carter = {name: "Carter"}
terah.children.colton = {name: "Colton"}

adam.children = terah.children;

// __________________________________________
// Reflection: Use the reflection guidelines
//
// What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// I had issues when it came time to include the children in the object. At first, I was using bracket notation to include all the necessary information. I then shifted to dot notation and was able to navigate through the challenge. I felt as though the dot notation was easier to read and understand. It made more sense to read through what was being directed towards which object. I then was able to create the required name/property combination per the instructions for adding children.
//

// How difficult was it to add and delete properties outside of the object itself?
//
// Deleting the eye color property was fairly simple. I did not spend much time on this part of the challenge. Adding properties from outside of the object itself proved to be a bit more difficult. That being said, the pattern of both bracket and dot notation was continuiously repeated. After doing some additional reading about the different expressions, I was able to complete the challenge.

// What did you learn about manipulating objects in this challenge?
//
// This tool will prove to be very powerful in future. Creating objects will allow us to store data. Similar to Ruby, we would store data in arrays & hashes. This has taught me to use objects similar to the creation of an array or hash. I also learned about navigating through levels of objects to reach new groups. In the challenge, we went through the terah object to find children and insert that group of data into the adam object.
//
//


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)