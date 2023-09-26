let cant = 100;
let balls = [];
function setup() {
  createCanvas(500, 500);
  for (let i=0; i<cant; i++) {
    balls[i] = new Ball();
  }
}

function draw() {
  background(0);

  for (let i=0; i<cant; i++) {
    balls[i].dibujar();
    balls[i].mover();
    if (i<cant-1) {
      balls[i].relacionar(balls[i+1]);
    }
  }
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
    this.px = width/2;
    this.py = height/2;
    this.dx = random(-2, 2);
    this.dy = random(-2, 2);
  }
  relacionar(otraBola) {
    let distan = dist(this.px, this.py, otraBola.px, otraBola.py);
    if (distan<width/2) {
      line(this.px, this.py, otraBola.px, otraBola.py);
    }
  }
}
