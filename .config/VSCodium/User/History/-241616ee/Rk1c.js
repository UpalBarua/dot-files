const soundKeys = document.querySelectorAll('.key');

window.addEventListener('keydown', (e) => {
  const keyCode = e.keyCode;
});

soundKeys.forEach(key => {
  console.log(key.getAttribute('data-key-code'));
})