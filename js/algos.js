
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



// RELEASE 1: Find a Key-Value Match
//