class Cir extends Comportamiento {

  constructor(x, y, dx, dy, vert) {
    super(x, y, dx, dy, vert);
    //this.dx = random(-2, 2); // hereda el valor de la clase Comportamiento
   // this.dy = random(-3, 3);
    this.vert = false;
    this.diam = random(20, 40);
  }
  dibujarCir() {
    fill(200, 0, 0);
    circle(this.x, this.y, this.diam);
    this.mover();
  }
  cambiarDir() {
    this.vert = !this.vert;
  }
}
