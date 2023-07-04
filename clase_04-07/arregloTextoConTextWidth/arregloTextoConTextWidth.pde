String [] guitars = {"Jimmie Hendrix", "Eric Clapton", "Richie Blackmore", "Gilmour", "Jeff Beck", "Giardino", "Bonamassa", "Kotzen", "Slash"};
float [] ancho = new float[guitars.length]; 
int numero;
void setup() {
  size(600, 400);
  textSize(22);
  textAlign(LEFT, CENTER);
  for (int i=0; i<ancho.length; i++) {
    ancho[i] = textWidth(guitars[i]); // en ancho[i] guardamos el largo del texto de guitars[i]
  }
}
void draw() {
  background(0);

  for (int i=0; i<guitars.length; i++) { // .length permite acceder a la longitud del arreglo
    fill(200, 130, 20);
    rect(400, 90+i*30, ancho[i], 25, 10); // el quinto parámetro es el redondeo de puntas
    fill(255);
    text(guitars[i], 400, 100+i*30);
  }
  text(guitars[numero], 200, 50); // texto "suelto"
}
void mousePressed() { // al presionar cambia el valor del indice del arreglo
  numero++;
  numero = numero%guitars.length; // conteo que regresa al primer valor
  /*if (numero>=guitars.length-1) {
   numero = 0;
   } else {
   numero ++;
   }*/
}
