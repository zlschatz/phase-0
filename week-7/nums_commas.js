// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution
function separateComma(number){
  var number = number;
  var digits_rev_array = (""+number).split("").reverse();
  if (number.length < 4) {
    console.log(number);
  }
  else {
    var counter = 0;
    var len = digits_rev_array.length;
    for (counter = 0 ; counter < len; counter++){
      if (counter % 3 == 0 && counter !=0){
        digits_rev_array.splice(counter, 0, ",");
        }
    }
  }
  var final_number = digits_rev_array.reverse().join("")
  console.log(final_number);
}


separateComma(10000000000);



// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection