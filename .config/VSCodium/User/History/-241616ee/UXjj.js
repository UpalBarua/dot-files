const soundKeys = document.querySelectorAll('.key');

window.addEventListener('keydown', (e) => {
  const keyCode = e.keyCode;
  const audio = document.querySelector(`[data-key-code="${keyCode}"]`);
  if (!audio) return
  else audio.play();
  console.log(audio);
  
});
