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

function childName(name) {
  if (name == "Carson") {
    return name;
  } else if (name == "Carter") {
    return name;
  } else if (name == "Colton"){
    return name;
  }
  else
    return "Sorry, we don't have a child named " + name + ".";
  }
}

var adam = {
  name: "Adam",
  spouse: "Terah",
  children: terah.children,
}


terah["spouse"] = adam["name"];
terah["weight"] = 125;
delete terah["eyeColor"]
terah["children"] = {
  getName: childName("Carson"),
  getName: childName("Carter"),
  getName: childName("Colton"),
}

//Step 7



console.log(terah)