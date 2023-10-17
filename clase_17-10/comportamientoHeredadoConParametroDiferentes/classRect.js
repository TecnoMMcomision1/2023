class Rect extends Comportamiento {

  constructor(x, y, dx, dy, vert) {
    super(x, y, dx, dy, vert);
    // this.x = x;
    //this.y = y;
    this.dx = random(-1, 1);
    this.dy = random(-1, 1);
    this.tam = random(20, 40);
    this.vert = true;
  }
  dibujarRect() {
    fill(100);
    rect(this.x, this.y, this.tam, this.tam);
    this.mover();
  }
  cambiarDir() {
    this.vert = !this.vert;
  }
  
}
