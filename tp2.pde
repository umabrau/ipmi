// Brau Uma tp2
PFont fuente;
PImage foto1, foto2,foto3,foto4;
int segundos, px1, py1, py2, px2, x, y, ancho, alto;
String titulo1, descripcion1, descripcion2, descripcion3,empezar;

//fuentes imagenes 
void setup (){
size (640,480);
 loadFont ("Arial.vlw");
foto1 = loadImage ("thelma.png");
foto2 = loadImage ("loise.png");
foto3 = loadImage ("pistola.png");
foto4 = loadImage ("auto.png");
textFont (fuente);
segundos = 0; 
titulo1 = "Thelma y Louise";
descripcion1 = "Dirigida por Ridley Scott";
descripcion2 = "Geena Davis como Thelma / Susan Sarandon como Louise";
descripcion3 = "Una mesera y una ama de casa le disparan a / un violador y huyen en un coche";
px1 = -245;
py1 = -35;
py2 = 800;
px2 = -2100; 
x = 220;
y = 400;
ancho = 200;
alto = 50;
empezar = "PLAY";
}
//color ubic
void draw (){ 
background(255);
if (frameCount % 60==0){
segundos ++;
}

if (segundos < 5) {
image(foto1, 0, 0, width, height);
fill(240,126,0);
textSize (80);
text(titulo1, 11, py1);
fill(193,33,33);
text(descripcion1, px1, 160);
} 
else if(segundos >= 5 && segundos < 15) {
image(foto2, 0, 0, width, height);
fill(234,80,80);
textSize (50);
text(descripcion1, 8, py2);
}
else if(segundos >= 15 && segundos < 30) {
image(foto3, 0, 0, width, height);
fill(116,42,42);
textSize (30);
text(descripcion2, px2, 125);
}
else{
image(foto4, 0, 0, width, height);
fill(64,36,36);
text(descripcion3, 300, 435);
rect(x, y, ancho, alto);
fill(250,3,3);
text(empezar, 305, 430);

}
// mov del texto
if (px1 < 11){
px1=px1+2;
}
if (py1 < 95){
py1++;
}
if (py2 > 145){
py2--;
}
if (px2 < 10){
px2 = px2+2;
} 
}
void mousePressed() {
if (segundos > 30 && mouseX >= x && mouseX < x+ancho && mouseY > y && mouseY < y+alto){
segundos = 0;
px1 = -245;
py1 = -35;
py2 = 800;
px2 = -1200;
}
}
