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
        audio.played();
        audio.play();
      }
    }

  }

  drumKit.init();
})();