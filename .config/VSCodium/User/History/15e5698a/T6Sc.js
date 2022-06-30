function Car(name, color, type) {
  this.name = name;
  this.color = color;
  this.type = type;
  function sayColor() {
    console.log(this.color);
  }
}

const bmw = new Car('BMW', 'Black', 'EV');
