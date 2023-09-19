// ABSTRACCIÓN
// ENCAPSULAMIENTO
// POLIFORMISMO
// HERENCIA

let b,c,d;
function setup() {
  createCanvas(400, 400);
  b = new Ball();
  c = new Ball();
  d = new Ball();
}

function draw() {
  background(0);
  b.dibujar();
  b.mover();
  c.dibujar();
  c.mover();
  d.dibujar();
  d.mover();
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
    fill(255, 0, 0);
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
}
