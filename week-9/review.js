// Grocery List JS

// Pseudocode:
  //Create a new list
    // Define variable list as an empty object
  // Add an item with a quantity to the list
    // Define function to pass through item & quantity arguments
    // Add each item/qty pair to the list object
  // Remove an item from the list
    // Define function to remove item from list
    // IF item exists, remove item from list
    // ELSE leave list alone
  // Update quantities for items in your list
    // Define function to change qty of list item
    // IF item exists, change qty of list item
    // ELSE do nothing
  // Print the list
    // Define function to print list

// Initial Solution:

// var list = [];

// function add_item (item, qty){
//   list[item] = qty;
// };

// function print_list(){
//   console.log(list);
// }

// function delete_item(item){
//   for (var i = 0; i <= list.length; i++){
//     if (list[i] === item) {
//       list.splice(i, 1);
//     }
//   }
// }

// function update_item(item, qty){
//   list[item] = qty;
// }


// Refactored Solution:

var list = [];

function add_item (item, qty){
  list[item] = qty;
};

function delete_item(item){
  delete list[item];
}

function update_item(item, qty){
  list[item] = qty;
}

function print_list(){
  console.log(list);
}

add_item("lemonade", 2)
add_item("tomatoes", 3)
add_item("onions", 1)
add_item("ice cream", 4)
print_list()
delete_item("lemonade")
print_list()
update_item("ice cream", 1)
print_list()

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Targeting objects through bracket notation is definitely more fluent this time around. It's also becoming much easier to trasition from writing Ruby to JS. Definitely feels more natural, and less mistakes while defining variables, writing functions and not forgetting to include semicolons.


// What was the most difficult part of this challenge?
// Writing the for loop to delete the list item was challenging to complete. It's still not functioning exactly how I want it too, but I knew the refactored form before even writing the initial for loop. The difficulty is targeting the list item in the array. This may involve setting up a hash, to specify the key (list item) to be removed. Nonethless, working through JS in the past few weeks, I've become familiar and confident using methods such as delete.


// Did an array or object make more sense to use and why?
// Using either an array or an object yielded very similar results. Each functioned in the same manner, but array looked cleaner when printing the list. Because of this, I chose to move forward with the array. It was also easy to specify an item to delete while using an array and the delete method.


