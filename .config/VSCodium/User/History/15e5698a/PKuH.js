function Car(name, color, type) {
  this.name = name;
  this.carColor = color;
  this.type = type;
  this.sayColor = function() {
    console.log(color);
  }
}

const bmw = new Car('BMW', 'Black', 'EV');
