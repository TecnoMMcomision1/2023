//import processing.sound.*;
//SoundFile tren;
float pos, vel;
int cant = 4000;
int cantStars = 400;
int num;
float[] px = new float[cant];
float[] py = new float[cant];
float[] dx = new float[cant];
float[] dy = new float[cant];
float[] tam = new float[cant];
float[] tono = new float[cant];
float [][] star = new float[cantStars][2];
void setup() {
  size(800, 400);
  for (int i=0; i<cant; i++) {
    pos = -400;
    px[i] = pos;
    py[i] = 200-50;
    dy[i] = random(-2, -0.2);
    tam[i] = 10;
  }
  for (int i=0; i<cantStars; i++) {
    star[i][0] = random(width);
    star[i][1] = random(250);
  }
  vel = 1.3;
  // tren = new SoundFile(this, "train.mp3");
  //tren.loop();
}
void draw() {
  background(0);
  float volumen = map(dist(pos, 0, width/2, 0), 800, 0, 0.02, 1);
  //tren.amp(volumen);
  println(volumen);
  for (int i=0; i<cantStars; i++) {
    fill(255, 130);
    ellipse(star[i][0], star[i][1], 3, 3);
  }
  fill(220, 100);
  noStroke();
  ellipse(630, 80, 90, 80);
  fill(220);
  ellipse(630, 80, 80, 80);
  fill(0);
  ellipse(610, 80, 80, 80);
  for (int i=0; i<cant; i++) {
    if (py[i]<0) {
      px[i] = pos+190-tam[i]/2;
      py[i] = 200-50;
    }
    float distan = dist(px[i], py[i], pos+200, 200-50);
    tono[i] = map(distan, 0, width/2, 40, 0);
    tam[i] = map(distan, 0, width/2, 6, 1);
    py[i]+= dy[i];
    px[i] -= random(-0.8, 0.8);
    fill(200, tono[i]);
    noStroke();
    ellipse(px[i], py[i]+tam[i]/2, tam[i], tam[i]);
  }
  tren(pos, 200+random( 1), 100, 50);
  for (int i=268; i<height; i++) {
    float graduacion = map(i, 265, height, 200, 20);
    stroke(graduacion);
    line(0, i, width, i);
  }
  pos+= vel;
  if (pos>width+100) {
    pos = -300;
  }
}
void tren(float px, float py, int ancho, int alto) {
  fill(180);
  noStroke();
  rect(px, py, ancho*2, alto); // cuerpo
  rect(px, py-alto, ancho/2, alto); // cabina
  fill(40);
  rect(px+ancho/6, py-alto+alto/4, ancho/4, alto/2); // ventanas
  fill(180);
  rect(px+ancho, py-alto/2, ancho/4, alto/2); // cabina
  rect(px+ancho*2-ancho/4, py-alto, ancho/4, alto); // chimenea
  rueda(px, py+alto, ancho/4);
  rueda(px+ancho*2, py+alto, ancho/4);
  rueda(px+ancho*2-ancho/2, py+alto, ancho/4);
  rueda(px+ancho, py+alto, ancho/4);
  rueda(px+ancho/2, py+alto, ancho/4);
}
void rueda(float px, float py, int tam) {
  push();
  translate(px, py);
  rotate(radians(frameCount*vel));
  noFill();
  strokeWeight(5);
  stroke(80);
  ellipse(0, 0, tam*1.3, tam*1.3);
  line(-tam/2, 0, tam/2, 0);
  line(0, -tam/2, 0, tam/2);
  pop();
}
void mousePressed() {
  save("data/trencito"+num+".png");
  num++;
}
