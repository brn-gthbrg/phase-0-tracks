
// RELEASE 0: Find the Longest Phrase
// choose array to search
// check length of each string within the array
// choose the string with the largest number of characters
// print the chosen string
// add driver code


var arr = ["long phrase", "longest phrase", "longer phrase"];
//console.log(arr[2]);


function biggestString(array) {
  last_num = 0;
  biggest = "";
    for (var i = 0; i < array.length; i++) {
      if (array[i].length >  last_num) {
        last_num = array[i].length;
        biggest = array[i];
      }
    }
    console.log(biggest);
}


biggestString(arr);



//RELEASE 1
// define 2 objects
// define function that takes 2 objects as arguments
// define 'checker' as false
// for each key and value in object 1
  // until checker = true
    // check if object 2 contains key and value of object 1
    // if it does, checker is true
    // else it is false
  // print checker


var Steve = {name: "John", age: 32};
var Dave = {name: "Dave", age: 32};

//console.log(peep);
//console.log(otherPeep);

function Match(group1, group2) {
  for (var i in group1) {
    if (group1[i] == group2[i]) {
      return true
    }
  }
  return false;
}

console.log(Match(Steve, Dave));


//RELEASE 2: Generate Random Test Data
// define random word generator function
// function takes integer as argument
// for the given integer's number of times, do
// choose a random letter a random number (between 1 and 10) of times
// add each instance to an array