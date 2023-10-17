class Principal {
  constructor(cantRect, cantCir) {
    this.cantRect = cantRect;
    this.cantCir = cantCir;
    this.rec = [];
    this.cir = [];
    for (let i=0; i<this.cantRect; i++) {
      this.rec[i] = new Rect(random(width), random(height), random(20, 40));
    }
    for (let i=0; i<this.cantCir; i++) {
      this.cir[i] = new Cir(random(width), height/2, random(20, 40));
    }
  }
  dibujar() {
    for (let i=0; i<this.cantRect; i++) {
      this.rec[i].dibujarRect();
      
    }
    for (let i=0; i<this.cantCir; i++) {
      this.cir[i].dibujarCir();
    }
  }
  
  cambiar() {
    for (let i=0; i<this.cantRect; i++) {
      this.rec[i].cambiarDir();
    }
    for (let i=0; i<this.cantCir; i++) {
      this.cir[i].cambiarDir();
    }
  }
}
