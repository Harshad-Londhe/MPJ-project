/**
 * 
 */

let password = document.getElementById("password");
let cpassword = document.getElementById("cpassword");
let errorMSG = document.getElementById("err");
let checkbox = document.getElementById("checkbox");

function passwordMatch() {
  if(password.value !== cpassword.value) {
    // console.log("Passwords do not match");
    errorMSG.style.display = "block";
  }else{
    // console.log("Passwords match");
    errorMSG.style.display = "none";
  }
    
}
cpassword.addEventListener("keyup", passwordMatch);