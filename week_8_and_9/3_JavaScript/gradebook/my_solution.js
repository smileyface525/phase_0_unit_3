/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge with: C.J. Jameson

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var average = function (numbers) {
//   var sum = 0;
//   for (i = 0; i < numbers.length; i++) {
//     sum += numbers[i];
//   }
//   return sum / numbers.length
// };


// var gradebook = {}
// for (i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {
//       'testScores': scores[i],
//       'studentName': students[i]
//     };
// }

// gradebook.addScore = function(student, score) {
//   gradebook[student].testScores.push(score)
// }

// gradebook.getAverage = function(student) {
//   return average(gradebook[student].testScores);
// }

// __________________________________________
// Refactored Solution

var average = function (numbers) {
  var sum = 0;
  for (i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum / numbers.length
};


var gradebook = {}
for (i = 0; i < students.length; i++) {
  gradebook[students[i]] = {
      'testScores': scores[i]
    };
}

gradebook.addScore = function(student, score) {
  gradebook[student].testScores.push(score)
}

gradebook.getAverage = function(student) {
  return average(gradebook[student].testScores);
}








// __________________________________________
// Reflect

// What parts of your strategy worked? What problems did you face?
//  Working with CJ worked!
// What questions did you have while coding? What resources did you find to help you answer them?
//  We both seemed to had forgotten how to code in javascript but gradually started to remember. 
// What concepts are you having trouble with, or did you just figure something out? If so, what?
//  I was having a hard time figuring out th edifference between dot syntax and brackets notation.
//  With help of CJ, I was able to understand.
// Did you learn any new skills or tricks?
//  I didn't really learn anything new but lots of reviews.
// How confident are you with each of the Learning Competencies?
//  I'm still not sure of coding in javascript but hopefully I'll get more confidence as I do more
//  challenges.
// Which parts of the challenge did you enjoy?
//  Coding with someone and learning to code different way.
// Which parts of the challenge did you find tedious?
//  Trying to remember javascript syntax.

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
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)