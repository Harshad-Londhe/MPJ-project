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





