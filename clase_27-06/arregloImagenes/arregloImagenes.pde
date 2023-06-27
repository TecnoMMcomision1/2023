int cant = 7;
PImage [] caballo = new PImage[cant];
int num;
void setup() {
  size(600, 400);
  /*caballo[0] = loadImage("horse0.png");
   caballo[1] = loadImage("horse1.png");
   caballo[3] = loadImage("horse2.png");*/
  for (int i=0; i<cant; i++) {
    caballo[i] = loadImage("horse"+i+".png");
  }
}
void draw() {
  background(255);
  image(caballo[0], 200, 50); // imagen fija, llamando a un valor del arreglo

  for (int i=0; i<cant; i++) {
    image(caballo[i], 20+i*100, 250); // secuencia desplagada 
  }
  if (frameCount%6==0) {
    if (num<cant-1) {
      num++;
    } else {
      num=0;
    }
  }
  image(caballo[num], 200, 150); // animación continua usando una variable por índice
}
