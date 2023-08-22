let cx, cy, can, calt; // variables del cañón
let bx, by, btam; // variables de la bala
let nx, ny, nancho, nalto; // variables de la nave individual
let disparada;

let nnx = [];
let nny = [];
let dnx = [];
let cant = 5;
let derribadas = 0;
let seEscapan = 0;
let cargador = 0;
let cargadorLleno = true;
function setup() {
  createCanvas(600, 400);
  can = 40;
  calt = 80;
  cx = width/2;
  cy = height-calt/2;
  bx = cx;
  by = cy;
  btam = can;
  disparada = false;
  nx = 0;
  ny = 50;
  nancho = 100;
  nalto = 40;
  for (let i=0; i<cant; i++) {
    nnx[i] = random(-300, -100);
    nny[i] = i*nalto;
    dnx[i] = random(0.8, 1.6);
  }
  textSize(25);
}


function draw() {
  background(0);

  arma(cx, cy, can, calt);
  //nave(nx, ny, nancho, nalto);

  //nx+=2;
  if (nx>width) {
    nx = -nancho;
  }
  textSize(30);
  // text(keyCode, 100, 100); // descomentar esto para saber cuál tecla se presiona
  if (keyIsPressed===true) {
    if (keyCode=== RIGHT_ARROW && cx<width-can/2) {
      cx+=2;
    }
    if (keyCode=== LEFT_ARROW) { // limitar el borde izquierdo
      cx-=2;
    }
  }
  if (disparada && by>0) { // corregí el condicional (revisen)
    by -= 8;
    // by = by-2;
  } else {
    bx = cx;
    by = cy;
    disparada = false;
  }
  proyectil(bx, by, btam);
  if (impacto(bx, by, nx, ny, nancho, nalto)) {
    disparada = false;
    nx = -nancho;
  }
  /// implementación del arreglo de naves

  for (let i=0; i<cant; i++) {
    nave(nnx[i], nny[i], nancho, nalto);
    nnx[i] += dnx[i];
    if (nnx[i]>width) {
      nnx[i] = random(-300, -100);
      seEscapan++;
    }
    if (impacto(bx, by, nnx[i], nny[i], nancho, nalto)) {
      disparada = false;
      nnx[i] = random(-300, -100);
      derribadas++;
    }
  }
  if (!cargadorLleno) { // cargadorLleno === false
    if (derribadas>seEscapan) {
      text("GANASTE!!!!", width/2, height/2);
    } else {
      text("GAME OVER", width/2, height/2);
    }
  }
  fill(255, 0, 0);
  text("derribos "+derribadas, 50, 50);
  text("escapes " + seEscapan, 400, 50);
  text(cargador, width/2, 50);
}

function nave(x, y, ancho, alto) {
  fill(0, 255, 0);
  rectMode(CORNER);
  rect(x, y, ancho, alto);
}
function keyPressed() {
  if (cargador<10) {
    if (keyCode=== 32) {
      disparada = true;
      cargador++;
    }
  } else {
    cargadorLleno = false;
  }
}
function proyectil(x, y, diam) { // la bala del cañón
  fill(255, 140, 20);
  circle(x, y, diam);
}
function impacto(x, y, px, py, ancho, alto) {
  if (x>px&& x<px+ancho && y>py && y<py+alto) {
    return true;
  } else {
    return false;
  }
}

function arma(x, y, ancho, alto) { // el cañon
  fill(0, 0, 255);
  rectMode(CENTER);
  rect(x, y, ancho, alto);
}
