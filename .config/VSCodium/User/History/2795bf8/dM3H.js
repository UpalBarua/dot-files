function getDate() {
  const now = new Date();
  const second = now.getSeconds();
  console.log(second)
}

setInterval(getDate, 1000);
