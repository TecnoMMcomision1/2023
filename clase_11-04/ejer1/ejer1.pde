PImage miImagen;


float decimales;
long largo;
String palabra;
char letra;
boolean noEsta;
int pos;
float algo;

void setup() {
  size(400, 400);
  // frameRate(1);

  background(255);
  pos = 200; // valor inicial
  algo = 10;
}
void draw() {
  //pos = 200; acna noooo
  rect(pos, 100, 50, 50);
  pos = pos+10;
  float mx = mouseX;
  ellipse(mx, mouseY, 50, 50);
  //println("mouseX está: "+mouseX + " y mouseY vale: "+mouseY);
  println(mouseX + mouseY);
  println(pos);
  algo = algo *2;
}
