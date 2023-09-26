let cant = 10;
let balls = [];
function setup() {
  createCanvas(500, 500);
  for (let i=0; i<cant; i++) {
    balls[i] = new Ball();
  }
  background(0);
}

function draw() {

  for (let i=0; i<cant; i++) {
    balls[i].dibujar();
    balls[i].mover();
    for (let j=0; j<cant; j++) {

      if (i<cant-1) {
        balls[i].relacionar(balls[j]);
      }
    }
  }
  // muevan el mouse, a ver qué pasa
  let alpha = map(mouseX,0,width,0,255);
  fill(0, alpha);
  rect(0, 0, width, height); // plano negro que tapa todo
}
function mousePressed() {
  for (let i=0; i<cant; i++) {
    balls[i].reubicar();
  }
}

class Ball {
  constructor() {
    this.px = random(width);
    this.py = random(height);
    this.dx = random(-2, 2);
    this.dy = random(-2, 2);
    this.tam = 30;
  }
  dibujar() {
    noFill();
    strokeWeight(2)
      stroke(0, 250, 250);
    circle(this.px, this.py, this.tam);
  }
  mover() {
    this.px += this.dx;
    this.py += this.dy;

    this.px = this.px>width? 0 : this.px; // if/else en la misma linea
    this.px = this.px<0 ? width: this.px;

    this.py = this.py>height? 0 : this.py; // if/else en la misma linea
    this.py = this.py<0 ? height: this.py;
  }
  reubicar() {
    // modifiqué esto para que se ubiquen en la posición del mouse
    this.px = mouseX; 
    this.py = mouseY;
    this.dx = random(-2, 2);
    this.dy = random(-2, 2);
  }
  relacionar(otraBola) {
    line(this.px, this.py, otraBola.px, otraBola.py);
  }
}
