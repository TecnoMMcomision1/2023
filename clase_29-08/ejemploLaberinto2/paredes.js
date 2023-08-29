function laberinto(num) {
  if (num===1) {
    maze1();
  } else if (num===2) {
    maze2();
  } else {
    maze0();
  }
}


//---------- laberinto 1 ---------------//

function maze1() {
  for (let i = 0; i < 6; i++) {
    norte[i][0] = true;
    sur[i][5] = true;
    oeste[0][i] = true;
    este[5][i] = true;
  }

  // Paredes interiores
  este[0][1] = true;
  oeste[1][1] = true;
  este[0][2] = true;
  oeste[1][2] = true;
  este[2][0] = false; //true;
  oeste[3][0] = false; //true;
  este[2][5] = true;
  oeste[3][5] = true;
  este[3][1] = true;
  oeste[4][1] = true;
  este[2][2] = true;
  oeste[3][2] = true;
  este[4][3] = true;
  oeste[5][3] = true;

  // Horizontales
  norte[1][5] = true;
  sur[1][4] = true;
  norte[3][3] = true;
  sur[3][2] = true;
  norte[4][4] = true;
  sur[4][3] = true;

  // Verticales
  este[1][0] = true;
  oeste[2][0] = true;
  este[2][1] = true;
  oeste[3][1] = true;
  este[4][1] = true;
  oeste[5][1] = true;
  este[3][2] = true;
  oeste[4][2] = true;
  este[0][3] = true;
  oeste[1][3] = true;
  este[2][3] = true;
  oeste[3][3] = true;
  este[4][4] = true;
  oeste[5][4] = true;
  oeste[2][4] = true;
  este[3][4] = true;

  este[1][2] = true;
  oeste[2][2] = true;
  norte[0][4] = true;
  sur[0][3] = true;
  norte[5][4] = true;
  sur[5][3] = true;
  oeste[0][4] = true;
  este[1][4] = true;
  oeste[4][4] = true;
  este[5][4] = true;
}



//--------- Laberinto 2 ---------//
function maze2() {
  for (let i=0; i<cant; i++) {
    norte[i][0] = true; // borde superior
    sur[i][5] = true; // borde inferior
    oeste[0][i] = true; // borde izquierdo
    este[5][i] = true; // borde derecho
  }
  for (let i=0; i<cant-1; i++) {
    norte[i][2] = true;
    sur[i][1] = true;
  }
  este[0][1] = true;
  oeste[1][1] = true;
  este[2][1] = true;
  oeste[3][1] = true;

  este[1][0] = true;
  oeste[2][0] = true;
  este[3][0] = true;
  oeste[4][0] = true;
  este[1][2] = true;
  oeste[2][2] = true;
  este[0][3] = true;
  oeste[1][3] = true;
  este[2][3] = true;
  oeste[3][3] = true;
  este[3][4] = true;
  oeste[4][4] = true;

  norte[1][4] = true;
  sur[1][3] = true;
  norte[2][4] = true;
  sur[2][3] = true;

  norte[3][3] = true;
  sur[3][2] = true;
  norte[4][3] = true;
  sur[4][2] = true;

  norte[1][5] = true;
  sur[1][4] = true;
  norte[2][5] = true;
  sur[2][4] = true;
  norte[3][5] = true;
  sur[3][4] = true;
  norte[5][5] = true;
  sur[5][4] = true;
  norte[5][4] = true;
  sur[5][3] = true;
  norte[5][1] = true;
  sur[5][0] = true;
}

// ------laberinto 0 ------------//

function maze0() {
  for (let i=0; i<cant; i++) {
    norte[i][0] = true; // borde superior
    sur[i][5] = true; // borde inferior
    oeste[0][i] = true; // borde izquierdo
    este[5][i] = true; // borde derecho

    if (i<cant-1) { // hueco en el último bloque
      norte[i][1] = true;
      sur[i][0] = true;
    } else if (i>=1) { // hueco el primer bloque
      norte[i][2] = true;
      sur[i][1] = true;
    }
  }
  este[0][2] = true;
  este[0][3] = true;
  este[1][1] = true;
  oeste[2][1] = true;
  oeste[4][1] = true; //
  este[3][1] = true;

  oeste[1][2] = true;
  oeste[1][3] = true;

  este[2][2] = true;
  este[2][3] = true;
  oeste[3][2] = true;
  oeste[3][3] = true;

  este[1][3] = true;
  este[1][4] = true;
  oeste[2][3] = true;
  oeste[2][4] = true;

  este[3][3] = true;
  este[3][4] = true;
  oeste[4][3] = true;
  oeste[4][4] = true;
  este[2][5] = true;
  oeste[3][5] = true;
  norte[4][3] = true;
  sur[4][2] = true;
  norte[5][4] = true;
  sur[5][3] = true;
  norte[4][5] = true;
  sur[4][4] = true;
  norte[0][5] = true;
  sur[0][4] = true;
}
