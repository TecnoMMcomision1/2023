let r1, r2, r3; // declaramos tres instancias de objeto
function setup() {
  createCanvas(400, 400);
  r1 = new Rectangulo(); // constructor tomando los valores originales de la Clase
  r2 = new Rectangulo(width/2); // modificamos su ubicación en el eje X
  r3 = new Rectangulo(300, 100, 20, color(255, 0, 0)); // definimos ubicación , tamaño y color personalizado
}

function draw() {
  background(220);
  r1.display();
  r2.display();
  r3.display();
}

class Rectangulo {
  /*al incluir parámetros en el constructor, las instancias que se creen en el programa tendrán estos valores,
  a menos que se indique otra cosa*/
  constructor(x=100, y=250, tam = random(30, 80), relleno = color(100)) {
    this.tam = tam;
    this.x = x;
    this.y = y;
    this.relleno = relleno;
  }
  display() {

    fill(this.relleno);
    rectMode(CENTER);
    rect(this.x, this.y, this.tam, this.tam);
  }
}
