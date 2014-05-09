// U3.W8-9: 


// I worked on this challenge [by myself, with: ].

// 2. Pseudocode

// # def class GroceryList
// # initialize instance variable @list_hash
// # define a method for adding items to list
// # will require knowing item and quantity
// # will be added to @list_hash
// # define a method for removing items 
// # will require item name
// # delete the item from @list_hash
// # define a method for adjusting the quantity
// # will name and quantity
// # change the value of given key to the new quantity
// # define a method that displays the list(item and quantity)
 

// 3. Initial Solution

var groceryList= {};
groceryList['list'] = {};

groceryList.add_item = function(item, qty) {
	groceryList['list'][item] = qty;
}
groceryList.remove_item = function(item) {
	delete groceryList['list'][item]
}
groceryList.change_qty = function(item, qty) {
	groceryList['list'][item] = qty; 
}

 
// 4. Refactored Solution

var groceryList = {
	"list": {},
	add_item: function(item, qty) {
		groceryList['list'][item] = qty;
	},
	remove_item: function(item) {
		delete groceryList['list'][item]
	},
	change_qty: function(item, qty) {
		groceryList['list'][item] = qty; 
	}
}




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

function assert(test, message, number) {
  if (!test) {
    console.log(number + "false");
    throw ("Error" + message);  
  } 
    console.log(number + "true");
    return true;   
 }
 
assert(
   (groceryList.add_item instanceof Function),
   "groveryList.add_item should be defined as a function", 
   "1. "
);

assert(
   (groceryList.remove_item instanceof Function),
   "groveryList.remove_item should be defined as a function", 
   "2. "
);

// assert(
//    (groceryList.display_list instanceof Function),
//    "groveryList.display_list should be defined as a function", 
//    "3. "
// );

groceryList.add_item('avocado', 2);
groceryList.add_item('chiccken', 1);
groceryList.add_item('bread', 5);



assert(
   (Object.keys(groceryList.list).length == 3),
   "groceryList should have three items in its list", 
   "4. "
);

assert(
   (groceryList.list.bread == 5),
   "bread in the groceryList should equal to 5", 
   "5. "
);

groceryList.remove_item('bread');

assert(
   (Object.keys(groceryList.list).length == 2),
   "bread in the groceryList should equal to 5", 
   "6. "
);


// 5. Reflection

// What parts of your strategy worked? What problems did you face?
// --- I just had to reoganize my knowledge on javascript and also do some research.
// What questions did you have while coding? What resources did you find to help you answer them?
// --- Mostly some syntax quections since I was getting cinfused with Ruby suntax.  
// What concepts are you having trouble with, or did you just figure something out? If so, what?
// --- I just need to get used to writing and thinking in javascript whenever I need to.
// Did you learn any new skills or tricks?
// --- I knew about it, but for the first time I defined the whole object at once.
// How confident are you with each of the Learning Competencies?
// --- I feel much better but still not quite there yet.
// Which parts of the challenge did you enjoy?
// --- Triying new things and still passing the tests.
// Which parts of the challenge did you find tedious?
// Debugging.