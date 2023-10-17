class Principal {
  constructor() {
    this.cant = 50; // cantidad de objetos
    this.rec = [];
    this.cir = [];
    for (let i=0; i<this.cant; i++) {
      this.rec[i] = new Rect(random(width), random(height), random(20, 40));
      this.cir[i] = new Cir(random(width), height/2, random(20, 40));
    }
  }
  dibujar() {
    for (let i=0; i<this.cant; i++) {
      this.rec[i].dibujarRect();
      this.cir[i].dibujarCir();
    }
  }
  
  cambiar() {
    for (let i=0; i<this.cant; i++) {
      this.rec[i].cambiarDir();
      this.cir[i].cambiarDir();
    }
  }
}
