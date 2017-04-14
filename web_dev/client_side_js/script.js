console.log("Test Scripting in session!");

var bod = document.getElementById("bod");

var photo = document.getElementById("cone-photo");
photo.style.width = "75%";

function pinkBorder() {
  photo.style.border = "1.5em solid pink";
}

function putText() {
  console.log("Nice Click!")
}

photo.addEventListener("click", pinkBorder);

bod.addEventListener("click", putText);