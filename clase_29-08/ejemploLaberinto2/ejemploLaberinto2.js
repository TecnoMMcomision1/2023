let norte =[]; // pared superior
let sur =[]; // pared inferior
let este =[]; // pared este
let oeste =[]; // pared oeste
let fruta = [];
let cant = 6;
let ancho;
let sep = 4;
let px, py;
let numLaberinto = 0;
let cantFruta = 0;
function setup() {
  createCanvas(450, 450);
  ancho = width/cant;
  for (let i=0; i<cant; i++) {
    norte[i] = [];
    sur[i] = [];
    este[i] = [];
    oeste[i] = [];
    fruta[i] = [];
    for (let j=0; j<cant; j++) {
      norte[i][j] = false;
      sur[i][j] = false;
      este[i][j] = false;
      oeste[i][j] = false;
      let ubica = random(2);
      if (ubica>1 && cantFruta<8 && i+j>0) { // limitamos cantidad y evitamos ubicar en esquina 0,0
        fruta[i][j] = true;
        cantFruta++;
      } else {
        fruta[i][j] = false;
      }
    }
  }
  px = 0;
  py= 0;
}


function draw() {
  background(0);
  // ubicarParedes(cant);
  laberinto(numLaberinto);

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
      if (oeste[i][j]) {
        line(i*ancho+sep, j*ancho+sep, i*ancho+sep, j*ancho+ancho-sep);
      }
      if (fruta[i][j]) {
        fill(255, 0, 0);
        noStroke();
        ellipse(i*ancho+ancho/2, j*ancho+ancho/2, ancho/4, ancho/4);
      }
      if (fruta[px][py]) {
        fruta[px][py] = false;
        cantFruta --;
      }
    }
  }
  fill(255, 255, 0);
  noStroke();
  ellipse(px*ancho+ancho/2, py*ancho+ancho/2, ancho /2, ancho/2);
  fill(200);
  textSize(20);
  text(cantFruta, 400, 50);
  if(frameCount%120==0){
  numLaberinto++;
   reset(6);
  }
}

function keyPressed() {
  if (keyCode===RIGHT_ARROW && !este[px][py]) {
    px++;
  }
  if (keyCode===LEFT_ARROW && !oeste[px][py]) {
    px--;
  }
  if (keyCode===UP_ARROW && !norte[px][py]) {
    py--;
  }
  if (keyCode===DOWN_ARROW && !sur[px][py]) {
    py++;
  }
}

function reset(cant) { // borramos todo para poder generar un laberinto nuevo
  for (let i=0; i<cant; i++) {
    for (let j=0; j<cant; j++) {
      norte[i][j] = false;
      sur[i][j] = false;
      este[i][j] = false;
      oeste[i][j] = false;
    }
  }
  numLaberinto ++;
  numLaberinto = numLaberinto%3;
 // px = 0;
  //py = 0;
}
function mousePressed() {
  reset(6);
  numLaberinto ++;
  numLaberinto = numLaberinto%3;
}
