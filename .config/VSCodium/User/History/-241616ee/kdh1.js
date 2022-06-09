(function() {
  const drumKit = {
    init : function() {
      window.addEventListener('keydown', this.playAudio);
    },

    playAudio : function() {
      console.log("yay");
    }

  }

  drumKit.init();
})();