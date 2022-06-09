const secondHand = document.querySelector('.clock__second-hand');
const minuteHand = document.querySelector('.clock__minute-hand');
const hourHand = document.querySelector('.clock__hour-hand');

function getDate() {
  const now = new Date();

  const second = now.getSeconds();
  const secondDeg = (second / 60) * 360;
  secondHand.style.transform = `rotate(${secondDeg}deg)`;

  const minute = now.getMinutes();
  const minuteDeg = (minute / 60) * 360;
  minuteHand.style.transform = `rotate(${minuteDeg}deg)`;

  const hour = now.getHour();
  const hourDeg = (hour / 60) * 360;
  hourHand.style.transform = `rotate(${hourDeg}deg)`;


  console.log(second)
}

setInterval(getDate, 1000);
