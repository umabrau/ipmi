// Brau Uma tp2

//fuentes
PFont fontPantalla1, fontPantalla2, fontPantalla3, fontPantalla4;

//imagenes
PImage peli1, peli2, peli3, peli4;

//pantalla actual
int pantalla = 0;

//cambio pantallas/autom
int tiempoCambioPantalla = 6000;
int tiempoAnterior = 0;

//animaciones
float textAlpha = 0;
float fadeSpeed = 4.0;

//boton reinicio
int buttonX, buttonY, buttonW = 150, buttonH = 50;

void setup () {
  size(640, 480);
  
  peli1 = loadImage("peli1.jpg");
  peli2 = loadImage("peli2.jpg");
  peli3 = loadImage("peli3.jpg");
  peli4 = loadImage("peli4.jpg");
  
  fontPantalla1 = createFont("BodoniMT", 32);
  fontPantalla2 = createFont("BodoniMT", 32);
  fontPantalla3 = createFont("BodoniMT", 32);
  fontPantalla4 = createFont("BodoniMT", 32);
  
  
//boton de reinicio 
  buttonX = width - buttonW - 20;
  buttonY = height - buttonH - 20;
}

void draw () {
// cambio auto de pantallas 
  if (millis() - tiempoAnterior >= tiempoCambioPantalla && pantalla < 4) {
    pantalla++;
    tiempoAnterior = millis();
    textAlpha = 0;
  }

  if (pantalla == 0) pantalla1();
  else if (pantalla == 1) pantalla2();
  else if (pantalla == 2) pantalla3();
  else if (pantalla == 3) pantalla4();
}

void pantalla1() {
  background(255);
  image(peli1, 0, 0, width, height);
  textFont(fontPantalla1);
  fill(0, textAlpha);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Thelma y Louise", 313,30);
  
  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla2() {
  background(255);
  image(peli2, 0, 0, width, height);
  textFont(fontPantalla2);
  fill(255, textAlpha);
  textSize(28);
  textAlign(CENTER, CENTER);
  text("Dirigida por Ridley Scott", 333,443);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla3() {
  background(255);
  image(peli3, 0, 0, width, height);
  textFont(fontPantalla3);
  fill(255, textAlpha);
  textSize(24);
  textAlign(CENTER, CENTER);
  text("Una mesera y una ama de casa le disparan", 333,368);
  text("a un violador y huyen en un coche",333,393);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla4() {
  background(255);
  image(peli4, 0, 0, width, height);
  textFont(fontPantalla4);
  fill(0, textAlpha);
  textSize(26);
  textAlign(CENTER, CENTER);
  text("Un viaje sin retorno que marcó al cine", 316,30);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;

//boton de reinicio
  if (mouseX > buttonX && mouseX < buttonX + buttonW &&
      mouseY > buttonY && mouseY < buttonY + buttonH) {
    fill(150, 220, 255);
  } else {
    fill(100, 200, 250);
  }
  rect(buttonX, buttonY, buttonW, buttonH, 10);
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Reiniciar", buttonX + buttonW/2, buttonY + buttonH/2);
}

void mousePressed() {
  if (pantalla == 4 &&
      mouseX > buttonX && mouseX < buttonX + buttonW &&
      mouseY > buttonY && mouseY < buttonY + buttonH) {
    pantalla = 0;
    tiempoAnterior = millis();
    textAlpha = 0;
  }
}
