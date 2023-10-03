class Principal {
  constructor() {
    this.car1 = new Auto(0, 100, 120, 50);
    this.car2 = new Auto(0, 150, 100, 60);
    this.cars = [];
    for (let i=0; i<4; i++) {
      /*50+i es solo una separación del borde superior
      random(80,120) podría reemplazarse con una propiedad aleatoria*/
      this.cars[i] = new Auto(0, 50+i*100,random(80, 120),random(40,60));
    }
  }
  display() {
    //this.car1.dibujarAuto();
    //this.car2.dibujarAuto();
    for (let i=0; i<4; i++) {
      this.cars[i].dibujarAuto();
    }
  }
}
