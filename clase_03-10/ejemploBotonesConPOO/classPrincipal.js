class Programa {

  constructor() {
    this.pantalla = 0;
    this.anchoBot = 120;
    this.altoBot = 60;
    this.bot1 = new Boton(0, this.altoBot, this.anchoBot, this.altoBot );
    this.bot2 = new Boton(width-this.anchoBot, this.altoBot, this.anchoBot, this.altoBot);
    this.bot3 = new Boton(0, this.altoBot, this.anchoBot, this.altoBot );
  }

  dibujar() {
    text("Pantalla "+ this.pantalla, width/2, 100);
    if (this.pantalla===0) {
      this.bot1.dibujarBoton(0, 1, "Inicio");
    } else if (this.pantalla==1) {
      this.bot2.dibujarBoton(1, 2, "Créditos");
    } else if (this.pantalla===2) {
      this.bot3.dibujarBoton(2, 0, "Volver");
    }
  }
  accionarBotones() {
    if (this.bot1.botonPress(0, this.altoBot, this.anchoBot, this.altoBot) && this.pantalla===this.bot1.actual) {
      this.pantalla = this.bot1.prox;
    }
    if (this.bot2.botonPress(width-this.anchoBot, this.altoBot, this.anchoBot, this.altoBot)&&this.pantalla===this.bot2.actual) {
      this.pantalla = this.bot2.prox;
    }
    if (this.bot3.botonPress(0, this.altoBot, this.anchoBot, this.altoBot)&& this.pantalla===this.bot3.actual) {
      this.pantalla = this.bot3.prox;
    }
  }
}
