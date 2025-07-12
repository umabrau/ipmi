//Brau Uma 122618/7
//obra 29 al Cuadrado
//comision 1 
// https://youtube.com/shorts/rr6oqRlIrVY?si=ZgWjlRkD25VfEj7X 

PImage imagen;
int cantidad, posX, posY, tam, cantidadVariable;
color colorRelleno;

void setup() {
size(800, 400);
imagen = loadImage ("29.jpg");
posX = 0;
colorRelleno = color(0);

posY = 0;
cantidad = 20;
cantidadVariable = cantidad;
tam = height / cantidad;
}

void draw() {
background(255);
image(imagen , 0, 0, 400, 400);
grillaDeformada(cantidad, tam);
}

void grillaDeformada(int cantidad_, int tam_) {
int posX_, posY_;
for (int i = 0; i < cantidad_; i++) {
posX_ = 0;

for (int j = 0; j < cantidad_; j++) {
if ((i + j) % 2 == 0) {
fill(255);
} else {
fill(colorRelleno);
}

posY_ = tam_ * i;
float distanciaX = abs(j - (cantidad_) / 2);
float mapDistancia = map(distanciaX, (cantidad_) / 2, 0, tam_ * 2, tam_ * 0.1);


rect(posX_ + 400, posY_, mapDistancia, tam_);
posX_ += mapDistancia;
    }
  }
}

void mouseClicked() {
  colorRelleno = color(random(40, 200), random(40), random(20, 100));
}
