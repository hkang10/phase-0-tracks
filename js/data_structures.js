
  //creating horse colors into an Array
  var color = new Array("blue", "red", "black", "green");
  //creating horse names into an Array
  var name = new Array("Ed", "Thunder", "Black Knight", "Teddy")

  console.log(color.length)
  console.log(name.length)

  //adding new horse color
  color.push('yellow');
  //adding new horse name
  name.push('Whisper');

  console.log(color);
  console.log(name);

function printing_objects(color) {}

  for(var i = 0; i < color.length; i++){
    printing_objects[color[i]] = name[i];
       }

console.log(printing_objects);

function cars(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;
}

var newcar = new cars("Toyota", "Camry", 1996)
console.log('Your new car is' + " " + newcar.make + " " +newcar.model + " "+newcar.year + ".");

var newcar1 = new cars("Honda", "Accord", 2010)
console.log('Your new car is' + " " + newcar1.make + " " +newcar1.model + " "+newcar1.year+ ".");

var newcar2 = new cars("Lexus", "IS300", 2014)
console.log('Your new car is' + " " + newcar2.make + " " +newcar2.model + " "+newcar2.year+ ".");
