/**
 * 
 */

let password = document.getElementById("password");
let cpassword = document.getElementById("cpassword");
let errorMSG = document.getElementById("err");
let checkbox = document.getElementById("checkbox");
let subbtn = document.getElementById("subbtn")

function passwordMatch() {
  if(password.value !== cpassword.value) {
    // console.log("Passwords do not match");
    errorMSG.style.display = "block";
    subbtn.disabled = true;
  }else{
    // console.log("Passwords match");
    errorMSG.style.display = "none";
    subbtn.disabled = false;
  }
    
}
cpassword.addEventListener("keyup", passwordMatch);