const soundKeys = document.querySelectorAll('.key');

window.addEventListener('keydown', (e) => {
  const keyCode = e.keyCode;
  soundKeys.forEach(key => {
    if (keyCode === key['data-key-code']) {
      console.log('yay');
    }
  })
});