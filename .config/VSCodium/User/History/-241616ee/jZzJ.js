(function() {
  const drumKit = {
    init : function() {
      window.addEventListener('keydown', this.playAudio);
    },

    animateKey : function(container) {
      // container.classList.add('playing');
      console.log('yay');
    },

    playAudio : function(e) {
      const audioContainer = document.querySelector(`[data-key-code="${e.keyCode}"]`);
      if (!audioContainer) return;
      else {
        const audio = audioContainer.querySelector('audio');
        audio.currentTime = 0;
        audio.play();
        this.animateKey();
      }
    }

    



  }

  drumKit.init();
})();