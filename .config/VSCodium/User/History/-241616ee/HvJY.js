(function() {
  const drumKit = {
    init : function() {
      window.addEventListener('keydown', this.playAudio);
    },

    playAudio : function(e) {
      const audioContainer = document.querySelector(`[data-key-code="${e.keyCode}"]`);
      if (!audioContainer) return;
      else {
        const audio = audioContainer.querySelector('audio');
        audio.currentTime = 0;
        audio.play();
        drumKit.animateKey(audioContainer);
      }
    },

    animateKey : function(container) {
      container.classList.add('playing');
      container.addEventListener('transitionend', () => {
        container.classList.remove('playing');
      });
    }
  }

  drumKit.init();
})();