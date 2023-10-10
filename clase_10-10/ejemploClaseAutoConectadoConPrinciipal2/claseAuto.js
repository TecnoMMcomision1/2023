class Auto {
  constructor(ax, ay, ancho, alto) {
    this.ax = ax;
    this.ay = ay;
    this.ancho = ancho;
    this.alto = alto;
    this.dx = random(0.5, 2.8);
    this.r1 = new Rueda(this.alto);
    this.r2 = new Rueda(this.alto);
    this.chocador = true;
  }
  dibujarAuto() {
    fill(200, 0, 0);
    rect(this.ax, this.ay, this.ancho, this.alto); // carrocería
    this.r1.dibujarRueda(this.ax, this.ay+this.alto,this.dx);
    this.r2.dibujarRueda(this.ax+this.ancho, this.ay+this.alto, this.dx);
    fill(100, 80);
    triangle(this.ax, this.ay, this.ax, this.ay-this.alto/2, this.ax+this.ancho, this.ay); // cabina

    //this.mover(); // llamo al método mover dentro de dibujarAuto()
  }
  mover() {
    this.ax += this.dx;
    if (this.ax>width) {
      this.ax = -this.ancho;
      this.chocador = true;
    }
  }
}
