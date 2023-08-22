let norte =[]; // pared superior
let sur =[]; // pared inferior
let este =[]; // pared derecha
let oeste =[]; // pared izquierda
let cant = 6;
let ancho;
let sep = 4;
let px, py;
function setup() {
  createCanvas(500, 500);
  ancho = width/cant;
  for (let i=0; i<cant; i++) {
    norte[i] = [];
    sur[i] = [];
    este[i] = [];
    oeste[i] = [];
    for (let j=0; j<cant; j++) {
      norte[i][j] = false;
      sur[i][j] = false;
      este[i][j] = false;
      oeste[i][j] = false;
    }
  }
  px = 0;
  py= 0;
}


function draw() {
  background(0);
  ubicarParedes(cant);
  for (let i=0; i<cant; i++) {
    for (let j=0; j<cant; j++) {
      strokeWeight(3);
      stroke(0, 0, 255);
      if (norte[i][j]) {
        line(i*ancho+sep, j*ancho+sep, i*ancho+ancho-sep, j*ancho+sep );
      }
      if (sur[i][j]) {
        line(i*ancho+sep, j*ancho+ancho-sep, i*ancho+ancho-sep, j*ancho+ancho-sep );
      }
      if (este[i][j]) {
        line(i*ancho+ancho-sep, j*ancho+sep, i*ancho+ancho-sep, j*ancho+ancho-sep);
      }
    }
  }
  fill(255, 255, 0);
  noStroke();
  ellipse(px*ancho+ancho/2, py*ancho+ancho/2, ancho /2, ancho/2);
}

function keyPressed() {
  if (keyCode===RIGHT_ARROW && !este[px][py]) {
    px++;
  }
}
function ubicarParedes(cant) {
  /*norte[0][0] = true;
   norte[1][0] = true;
   norte[2][0] = true;*/
  for (let i=0; i<cant; i++) {
    norte[i][0] = true;
    sur[i][0] = true;
    sur[i][5] = true;
  }
  sur[5][0] = false;
  este[5][0] = true;
}
