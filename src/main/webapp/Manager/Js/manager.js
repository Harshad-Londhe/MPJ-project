function confirmUpdate(name) {
  var confirmed = confirm('Are you sure you want to update details of ' + name + '');
  if (!confirmed) {
    return false;
  }
}


function confirmDelete() {
  var confirmed = confirm('Are you sure you want to delete this medicine?');
  if (!confirmed) {
    return false;
  }
}


function showpwd(){
  
  if(checkbox.checked == true){
      password.type = "text";
      cpassword.type = "text";
  
  }else{
      password.type = "password";
      cpassword.type = "password";
  }
}

checkbox.addEventListener("click", showpwd);


