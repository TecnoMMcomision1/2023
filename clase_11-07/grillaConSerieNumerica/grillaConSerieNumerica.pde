int cant = 10; // cantidad de filas y columnas
int tam;
int [][] num = new int[cant][cant];
void setup() {
  size(500, 500);
  textSize(22);
  textAlign(CENTER, CENTER);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      int serie = j*cant+i; // analicen esta relación entre índices y cantidad
      num[i][j] = serie;
    }
  }
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      noFill();
      stroke(255, 255, 0);
      rect(i*tam, j*tam, tam, tam);
      text(num[i][j], i*tam+tam/2, j*tam+tam/2);
    }
  }
}
void mousePressed() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (presionado(i, j, tam)) {
        num[i][j] = num[i][j]*2;
      }
    }
  }
}
boolean presionado(int x, int y, int pochoclo) {
  if (mouseX>x*pochoclo && mouseX<x*pochoclo+pochoclo && mouseY>y*pochoclo && mouseY<y*pochoclo+pochoclo) {
    return true;
  } else {
    return false;
  }
}
