int estado =0;
int segundos= 0;
boolean arranca;
void setup() {
  size(400, 400);
  textSize(40);
  textAlign(CENTER);
}
void draw() {
  background(0);
  text(segundos, width/2, 300);

  if (arranca == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }
  if (estado==0) {
    text("Estado 0, inicial", width/2, 100);
  }
  if (estado==1) {
    text("Estado 1, medio", width/2, 100);
    //image();
  }
  if (estado==2) {
    text("Estado 2, final", width/2, 100);
  }
  if (segundos<=3) {
    estado = 0;
  } else if (segundos>3 && segundos<= 6) {
    estado = 1;
  } else {
    estado = 2;
  }
}
void mousePressed() {
  arranca = true;
}
void keyPressed() {
  segundos = 0;
  estado =0;
  arranca  = false;
}
