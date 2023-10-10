class Principal {
  constructor() {
    this.per = new Tipito(width-100, height/2, 40, 80);
    this.cars = [];
    for (let i=0; i<4; i++) {
      /*50+i es solo una separación del borde superior
       random(80,120) podría reemplazarse con una propiedad aleatoria*/
      this.cars[i] = new Auto(0, 50+i*100, random(80, 120), random(40, 60));
    }
  }
  display() {
    for (let i=0; i<4; i++) {
      this.cars[i].dibujarAuto();
      this.cars[i].mover();
    }
    this.per.dibujarTipito();
    this.arrollamiento();
  }
  arrollamiento() {
    for (let i=0; i<4; i++) {
      if (this.choque(this.cars[i].ax, this.cars[i].ay, this.cars[i].ancho, this.per.px, this.per.py, this.per.ancho, this.per.alto)&&this.cars[i].chocador) {
        background(200, 200, 0);
        this.cars[i].chocador = false;
      }
    }
  }

  // parámetros ubic auto y personaje
  choque(x, y, autoAncho, px, py, pancho, alto) {
    return x+autoAncho>px && x<px+pancho && y+autoAncho/2>py && y<py+alto;
  }



  moverPersonaje(tecla) {
    this.tec = tecla;
    if (this.tec === UP_ARROW) {
      this.per.moverArriba();
    } else if (this.tec === DOWN_ARROW) {
      this.per.moverAbajo();
    }
  }
}
