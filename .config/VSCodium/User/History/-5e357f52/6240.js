const mainControls = document.querySelectorAll('.main__controls > input');

mainControls.forEach(control => {
  control.addEventListener('change', (e) => {
    console.log(control.value);
  });
});