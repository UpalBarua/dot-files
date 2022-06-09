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
        this.animateKey(audioContainer);
      }
    },

    animateKey : function(container) {
      container.classList.toggle('playing');
    }



  }

  drumKit.init();
})();