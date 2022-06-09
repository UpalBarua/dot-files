(function() {
  const drumKit = {
    init : function() {
      window.addEventListener('keydown', playAudio);
    },

    playAudio : function() {
      console.log("yay");
    }

  }

  drumKit.init();
})();