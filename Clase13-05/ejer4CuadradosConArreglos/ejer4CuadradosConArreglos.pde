float px1, px2, px3;
float dx1, dx2, dx3;
float [] px; // declaro un arreglo de tipo flotante
float [] dx;

void setup() {
  size(500, 500);
  px = new float[10]; // dimensiono, damos tamaño de 10 espacios de memoria
  dx = new float[10];
  /*px[0] = random(1, 2);
   px[1] = random(1, 2);
   px[2] = random(1, 2);*/
  for (int i=0; i<10; i++) {
    px[i] = random(width);
    dx[i] = random(1, 2); // en cada repeticiòn de i carga un nuevo valor
  }

  px1 = 0;
  px2 = 0;
  px3 = 0;
  dx1 = random(1, 2);
  dx2 = random(1, 2);
  dx3 = random(1, 2);
}
void draw() {
  background(0);
  for (int i=0; i<10; i++) {
    rect(px[i], i*50, 50, 50);
    if (px[i]>width) {
      px[i] =0;
    }
    px[i] = px[i]+dx[i];
  }
  /*rect(px1, 0, 50, 50);
   rect(px2, 50, 50, 50);
   rect(px3, 100, 50, 50);
   px1 += dx1;
   px2 += dx2;
   px3 += dx3;*/
}
void mousePressed() {
  for (int i=0; i<10; i++) {
    px[i] = 0;
    dx[i] = random(1, 2); // en cada repeticiòn de i carga un nuevo valor
  }
}
