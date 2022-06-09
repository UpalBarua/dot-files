(function() {
  const drumKit = {
    init : function() {
      window.addEventListener('keydown', this.playAudio);
    },

    playAudio : function(e) {
      console.log(e.keyCode)
    }

  }

  drumKit.init();
})();