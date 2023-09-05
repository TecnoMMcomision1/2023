let x, y, px, py;
let ang, dire; // angulo de giro y dirección del disparo
let vel; // velocidad del disparo
let disparo = false;
let pos = []; // arreglo de posición de los asteroides
let derribado = []; // derribado "desactiva" el asteroide para nuevos disparos
let cant = 10;
let tam = 30;
let puntos = 0;
function setup() {
  createCanvas(450, 450);
  x = width/2;
  y = height;
  vel = 5;
  ang = -90;
  px = x;
  py = y;
  for (let i=0; i<cant; i++) {
    pos[i] = [];
    pos[i][0] = random(width); // guarda valores para el eje X
    pos[i][1] = random(height/2); // guarda valores pare le eje y
    derribado[i] = false;
  }
  textSize(30);
}


function draw() {
  background(200);
  push();
  translate(x, y);
  ang = atan2(mouseY-y, mouseX-x); // captura el angulo de giro del cañón
  rotate(ang);
  fill(200, 200, 0);
  rectMode(CENTER);
  rect(0, 0, 100, 30);
  pop();

  line(mouseX, mouseY, x, y);
  if (disparo) {
    px = px+cos(dire)* vel; // valor de giro de la bala
    py = py+ sin(dire)*vel;
  }
  fill(255, 0, 0);
  circle(px, py, 20);
  
  // reiniciamos la posición de la bala si sale de la pantalla
  if (px>width || px<0 || py>height || py<0) { 
    px = x;
    py = y;
    disparo = false;
  }
  for (let i=0; i<cant; i++) {
    fill(100);
    circle(pos[i][0], pos[i][1], tam);
    if (derribo(px, py, 20, pos[i][0], pos[i][1], tam)&& !derribado[i]) {
      background(255, 255, 0);
      puntos++;
      pos[i][1] = height+tam;
      derribado[i] = true;
    }
  }
  fill(0, 0, 255);
  text(puntos, 50, 400);
}
function derribo (x, y, d, px, py, ptam) {
  let distan = dist(x, y, px, py);
  if (distan<d/2+ptam/2) {
    return true;
  } else {
    return false;
  }

  //return distan<d/2+ptam/2
}
function mousePressed() {
  disparo = true; // hay que limitar esto para que no tome otra dirección antes de impactar
  dire = ang; // giro toma el angulo del cañón
}
