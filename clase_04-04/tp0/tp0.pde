// Apellido y nombre
// tp0 comisión 1

PImage paisaje; // nombre de la variable donde guardo la imagen
PImage grilla;
size(800, 400);
paisaje = loadImage("valleLuna.jpg");
grilla = loadImage("grilla.png");
//paisaje.resize(400,400);

background(20, 150, 255);
noStroke();
image(paisaje, 0, 0, 400, 400);
//image(grilla, 0, 0);
//image(grilla, 400, 0);
fill(200);
ellipse(725, 125, 50, 50);
fill(250, 150, 20);
rect(400, 250, 400, 150);
quad(650, 250, 700, 200, 800, 200, 800, 250);
fill(167, 144, 122);
rect(400, 350, 400, 50);
triangle(400, 350, 550, 200, 700, 350);
triangle(550, 350, 650, 150, 450, 100);
