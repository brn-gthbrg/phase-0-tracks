// Javascript reverse function pseudocode
// set variable to string
// define the function to take a string
// pick last letter of string by index
// for each letter until the first letter of the string
// print each letter

function reverseWord(word) {
  var backWord = "";
    for (var i = word.length - 1; i >= 0; i--) {
      console.log(word[i]);
    }
return backWord;
}

if (1==1) {
reverseWord("This string is backwards");
}