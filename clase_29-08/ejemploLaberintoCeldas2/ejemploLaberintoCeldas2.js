let celda = [];
let cant = 8;
let tam;
let px, py;
function setup() {
  createCanvas(450, 450);
  tam = width/cant;
 
  for (let i=0; i<cant; i++) {
    celda[i] = [];
    for (let j=0; j<cant; j++) {
      celda[i][j] = false;
    }
  }
  paredes();
  px = 0;
  py=0;
}


function draw() {
  background(200);
  for (let i=0; i<cant; i++) {
    for (let j=0; j<cant; j++) {
      if (celda[i][j]) {
        fill(100);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
  fill(255, 0, 0);
  ellipse(px*tam+tam/2, py*tam+tam/2, tam, tam);
}



function keyPressed() {
  if (keyCode===RIGHT_ARROW && celda[px+1][py]===false) {
    px++;
  }
  if (keyCode===LEFT_ARROW && !celda[px-1][py]) {
    px--;
  }
  if (keyCode===UP_ARROW && !celda[px][py-1]) {
    py--;
  }
  if (keyCode===DOWN_ARROW && !celda[px][py+1]) {
    py++;
  }
}
