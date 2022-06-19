let a = 0;
while (a <= 50) {
	if (a < 10) {
		console.log(`${a} is less than 10!`);
	} else if (a < 20) {
		console.log(`${a} is less than 20!`);
		continue
	}
	a++;
}