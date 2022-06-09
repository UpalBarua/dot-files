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
        animateKey();
      }
    },

    animateKey : function(container) {
      // container.classList.add('playing');
      console.log('yay');
    }
    



  }

  drumKit.init();
})();