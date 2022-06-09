(function() {
  const drumKit = {
    init : function() {
      window.addEventListener('keydown', this.playAudio);
    },

    playAudio : function(e) {
      const audioContainer = document.querySelector(`[data-key-code="${e.keyCode}"]`);
      if (!audio) return;
      else {
        console.log(audioContainer);
      }
    }

  }

  drumKit.init();
})();