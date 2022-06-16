const mainControls = document.querySelectorAll('.main__controls > input');

mainControls.forEach(control => {
  control.addEventListener('onchange', () => {
    console.log('yay');
  });
});