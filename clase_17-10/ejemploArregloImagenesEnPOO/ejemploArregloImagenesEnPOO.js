

let fondo;
function setup() {
  createCanvas(400, 400);
  fondo = new Imagenes();
}

function draw() {
  background(200);

  fondo.display();
}
