
let px = [100, 250, 450, 180]; // ubicacion inicial en eje X
let py = [100, 200, 300, 400]; // ubic inicial en eje Y
let dir = [];
let ancho, alto; // medidas de la plataforma
let x, y, diam;

function setup() {
  createCanvas(640, 480);
  for (let i=0; i<4; i++) {
    if (i%2===0) {
      dir[i] = 1;
    } else {
      dir[i] = -1;
    }
  }
  ancho = 120;
  alto = 40;
  x = 100;
  y = 0;
  diam = 30;
}


function draw() {
  background(200);
  let cayendo = true;
  for (let i=0; i<px.length; i++) {
    plataforma(px[i], py[i], 120, 40);
    px[i] += dir[i];
    if (px[i]>width-ancho || px[i]<0) {
      dir[i] *= -1;
    }
    if (contacto(x, y, diam, px[i], py[i], ancho, alto)) {
      cayendo = false;
    }
  }
  if (cayendo) {
    y++;
  } else {
    y=y;
  }
  ball(x, y, diam); // dibujo la pelota
  if (y>height) {
    y = 0;
    x = width/2;
  }

  if (keyIsPressed && !cayendo) {
    if (keyCode===RIGHT_ARROW && x<width-diam/2) {
      x++;
    }
    if (keyCode===LEFT_ARROW && x>diam/2) {
      x--;
    }
  }
}
function contacto(x, y, d, px, py, ancho, alto) { // revisa el contacto entre ball y la plataforma
  let seTocan = x+d/2>px && x-d/2<px+ancho && y+d/2>py && y<py+alto ;
  return seTocan;
}

function enContacto(x, y, d, px, py, ancho, alto) { // otra versión de la función
  if (x>px && x<px+ancho && y>py) {
    return true;
  } else {
    return false;
  }
}

function mousePressed() {
  y = 0;
  x = width/2;
}
function ball (x, y, d) {
  fill(0, 0, 250);
  circle(x, y, d);
}
function plataforma(x, y, ancho, alto) {
  fill(100);
  rect(x, y, ancho, alto);
}
