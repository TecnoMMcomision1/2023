class Imagenes {
  constructor() {
    this.load();
    this.num = 0;
  }

  load() {
    this.imagenes = [];
    for (let i = 0; i < 7; i++) {
      this.imagenes[i] = loadImage("data/horse" + i + ".png");
    }
  }

  display() {
    image(this.imagenes[this.num], 100, 100);
    this.mover();
  }
  mover() {
    this.num++;
    this.num = this.num%6;
  }
}
