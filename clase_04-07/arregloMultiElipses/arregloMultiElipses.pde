int cant = 100; // cantidad de valores a guardar
float[] px, py, dx, dy; // declaramos arreglos para posición y dirección
boolean [] activo = new boolean[cant]; 
int tam=40;

void setup() {
  size(500, 500);
  px = new float[cant]; // dimensinamos los arreglos
  py = new float[cant];
  dx = new float[cant];
  dy = new float[cant];
  for (int i=0; i<cant; i++) { // carga inicial de valores
    px[i] = width/2; // todos al centro
    py[i] = height/2;
    dx[i] = random(-2, 2); // dirección aleatoria
    dy[i] = random(-2, 2);
    activo[i] = true; // todos activos
  }
}

void draw() {
  background(0);
  for (int i=0; i<cant; i++) { // for controla todo
    if (px[i]>width-tam/2 || px[i]<tam/2) { // límites laterales
      dx[i] *= -1;
    }
    if (py[i]>height-tam/2 || py[i]<tam/2) { // límites superior e inferior
      dy[i]*= -1;
    }
    fill(255);
    ellipse(px[i], py[i], tam, tam);
    fill(255, 0, 0);
    text(i, px[i], py[i]);
    if (activo[i]) { // si está activo
      px[i]+= dx[i]; // se mueve
      py[i]+= dy[i];
    }
  }
}
void mousePressed() {
  for (int i=0; i<cant; i++) {
    if (estoySobre(px[i], py[i], tam)) {
      //activo[i] = false;
      activo[i] = !activo[i]; // cambiamos la condición si presionamos sobre la figura
    }
  }
}

// función que devuelve si estoy sobre una figura circular
boolean estoySobre(float x, float y, int dim) { 
  float distan = dist(mouseX, mouseY, x, y);
  return distan<dim/2;
}
