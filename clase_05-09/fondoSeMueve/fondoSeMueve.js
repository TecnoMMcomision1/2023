let fondo = [];
let cant = 2;
let py;
let num;
let puntos;
function preload() {
  for (let i=0; i<cant; i++) {
    fondo.push(loadImage('data/pantalla'+i+'.png'));
  }
}
function setup() {
  createCanvas(400, 600);
  py = -600;
  num = 0;
  puntos = 0;
}


function draw() {
  background(0);
  image(fondo[num], 0, py); //
  if (py>0) {
    py = -600;
  }
  py ++;
  if (puntos >=5) { // cambia el fondo
    num = 1;
  }

  fill(255);
  textSize(20);
  text("puntos: "+ puntos +"  en pantalla: " + num, 50, 50);
}
function mousePressed() {
  puntos++;
}
