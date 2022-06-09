const secondHand = document.querySelector('.clock__second-hand');
function getDate() {
  const now = new Date();
  const second = now.getSeconds();
  const secondDeg = (second / 60) * 360;
  secondHand.style.transform = 'rotate(90deg)';
}

setInterval(getDate, 1000);
