const secondHand = document.querySelector('.clock__second-hand');
function getDate() {
  const now = new Date();
  const second = now.getSeconds();
  const secondDeg = (second / 60) * 360;
  secondHand.style.transform = `rotate(${secondDeg}deg)`;
  console.log(second)
}

setInterval(getDate, 1000);
