int [] serie = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144};
int [] fibo = new int[50];
void setup() {
  size(800, 400);
  textSize(22);
  fibo[0] = 0;
  fibo[1] = 1;
  for (int i=2; i<fibo.length; i++) {
    fibo[i] = fibo[i-1]+fibo[i-2];
  }
}
void draw() {
  background(0);
  for (int i=0; i<serie.length; i++) {
    text(serie[i], 20+i*30, 100);
  }
  for (int i=0; i<fibo.length; i++) {

    text(fibo[i], 20+i*35, 200);
  }
}
