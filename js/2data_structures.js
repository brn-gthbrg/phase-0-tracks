var colors = ["blue", "red", "green", "yellow"];

var horses = ["Ed", "Gus", "Sadie", "Secretariat"];

colors.push("purple");
horses.push("Seabiscuit");

console.log(colors);
console.log(horses);


stable = {};
for (var i = 0; i < horses.length; i++) {
  stable[horses[i]] = colors[i];
}

//console.log(stable);



// for (var i = 0; i < horses.length; i++) {
//   console.log(stable[horses[i]]);
// }



function showObject(obj) {
  var result = "";
  for (var p in obj) {
    if(obj.hasOwnProperty(p)) {
      result += p + " , " + obj[p] + "\n";
    }
  }
  return result;
}

console.log(showObject(stable));

