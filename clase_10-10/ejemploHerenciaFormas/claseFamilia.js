class Abuela {
  constructor(x, y, tam) {
    this.x = x;
    this.y = y;
    this.tam = tam;
  }
  dibujarAbuela() {
    fill(100, 120);
    rectMode(CENTER);
    rect(this.x, this.y, this.tam, this.tam);
    fill(200, 140, 20);
    ellipse(this.x, this.y, this.tam, this.tam);
  }
}
class Madre extends Abuela {
  constructor(x, y, t) {
    super(x, y, t);
    this.x = x;
    this.y = y;
    this.t = t;
  }
  dibujarMadre() {
    this.dibujarAbuela();
    noStroke();
    fill(200, 0, 250);
    ellipse(this.x, this.y, this.t/2, this.t);
    ellipse(this.x, this.y, this.t, this.t/2);
  }
}
class Hija extends Madre {
  constructor(x, y, t) {
    super(x, y, t);
    this.x = x;
    this.y = y;
    this.t = t;
    this.dx = random(-2, 2);
  }
  dibujarHija() {
    this.dibujarMadre();
    fill(0, 255, 0);
    rect(this.x, this.y, this.t/2, this.t/2, this.t/8);
    this.mover();
  }
  mover() {
    this.x += this.dx;
    if (this.x>width || this.x<0) {
      this.dx *= -1;
    }
  }
}
