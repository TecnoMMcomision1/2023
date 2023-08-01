* El botón es un rectángulo pero el código para detectarlo es para un círculo (o al revés)
Eso está mal y es motivo para desaprobar

*Este tipo de linea no debe usarse mas, para eso está la función botón
 ej. mouseX >= 100 && mouseX <= 200 && mouseY >= 100 && mouseY <= 150
 
*No incluir variables globales dentro de una función. Se debe utilizar parámetros.

*Qué rayos es esto? :

boolean chequebotoncuadrado(int posx1, int posx2, int posy1, int posy2, int num) {
  int ux1= posx1; // estas declaraciones sobran
  int ux2= posx2;
  int uy1= posy1;
  int uy2= posy2;

  num=numm; // ¿y numm es una variable global? pero queeeeee!!!!!

  for (int i=0; i<12; i++) {
    pantallas[i]=1;
    pantallas[num]=0; 
  }
  return (mouseX>posx1 && mouseX<ux2 && mouseY >uy1 && mouseY<uy2);
  // si usamos el parámetro posx1 funciona igual
}
