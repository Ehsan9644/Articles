document.addEventListener("DOMContentLoaded", function() {
  var myModal = new bootstrap.Modal(document.getElementById('myModal'));

  var openModalButton = document.getElementById('openModalButton');
  openModalButton.addEventListener('click', function() {
    myModal.show();
  });

  var closeModalButtons = document.querySelectorAll('[data-bs-dismiss="modal"]');
  closeModalButtons.forEach(function(button) {
    button.addEventListener('click', function() {
      myModal.hide();
    });
  });
});