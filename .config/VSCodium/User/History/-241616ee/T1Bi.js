const soundKeys = document.querySelectorAll('.key');

window.addEventListener('keydown', (e) => {
  const keyCode = e.keyCode;
  const audioContainer = document.querySelector(`[data-key-code="${keyCode}"]`);
  if (!audio) return
  else console.log(audio);
  audioContainer.querySelector('audio').play();
});
