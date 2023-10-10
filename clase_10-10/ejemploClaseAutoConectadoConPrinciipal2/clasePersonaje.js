class Tipito {
  constructor(px, py, ancho, alto) {
    this.px = px;
    this.py = py;
    this.ancho = ancho;
    this.alto = alto;
  }
  dibujarTipito() {
    fill(0, 0, 200);
    rect(this.px, this.py, this.ancho, this.alto);
  }
  moverArriba() {
    this.py -= 50;
  }
  moverAbajo() {
    this.py += 50;
  }
}
