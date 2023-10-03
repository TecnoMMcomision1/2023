class Boton {
  
  constructor(bx, by, ancho, alto) {
    this.bx = bx;
    this.by = by;
    this.ancho = ancho;
    this.alto = alto;
    textAlign(CENTER, CENTER);
    textSize(this.alto/2);
  }
  dibujarBoton( actual, prox, texto) { // dibuja el botón
    this.actual = actual;
    this.prox = prox;
    this.texto = texto;
    fill(0, 0, 255);
    rect(this.bx, this.by, this.ancho, this.alto);
    fill(255); 
    text(this.texto, this.bx+this.ancho/2, this.by+this.alto/2);
  }
  
   botonPress( bx, by, ancho, alto) { // detecta si el botón fue presionado
    return mouseX>this.bx && mouseX<this.bx+this.ancho && mouseY>this.by && mouseY<this.by+this.alto;
  }
}
