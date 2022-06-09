function getDate() {
  const now = new Date();
  const second = now.getSeconds();
  const secondDeg = (second / 60) * 360;
  console.log(secondDeg);
}

setInterval(getDate, 1000);
