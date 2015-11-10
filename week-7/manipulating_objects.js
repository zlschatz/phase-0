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

var adam = {
  name: "Adam",
  spouse: "Terah",
  children: terah.children,
}


terah["spouse"] = adam["name"];
terah["weight"] = 125;
delete terah["eyeColor"]
terah["children"] = []
//Step 7

console.log(terah)