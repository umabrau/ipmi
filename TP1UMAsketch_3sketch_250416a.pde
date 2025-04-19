void setup(){
size(800,400);
background(255);
}
void draw (){
  
  //imagen 
  
  
  
 
  
 //cielo 
 fill(140,244,252);
 stroke(140,244,252);
 rect(400,0,400,200); 
 
  //madera
  fill(245,168,2);
  stroke(131,95,17);
  rect(400,200,400,200);
  
  //tronco
  fill(162,119,25);
  stroke(131,95,17);
  rect(400,100,100,300);
  
  //copa
  fill(72,149,71);
  stroke(26,77,25);
  ellipse(500,50,200,150);
  ellipse(460,50,150,150);
  
   //oreja 
  fill(255,226,162);
  stroke(196,171,71);
  ellipse(690,170,20,15);
  
  //boca 
  fill(255,226,162);
  stroke(196,171,71);
  triangle(630,250,640,150,660,250);
  
   // cara  
  fill(255,226,162);
  stroke(255,226,162);
  rect(640,100,50,200);
  
  //0jos dos
  fill(255);
  stroke(0);
  ellipse(640,140,35,40);
 
 //nariz
 fill(255,226,162);
 stroke(255,226,162);
 rect(600,150,50,45);
 
 //ojo uno
fill(255);
stroke(0);
ellipse(660,150,30,35);

//ojo negro
fill(0);
ellipse(650,146,6,5);
ellipse(640,145,5,4);

//brazo uno
fill(255,226,162);
stroke(196,171,71);
rect(617,320,10,70);//brazo uno
rect(615,390,15,15);//mano uno
rect(705,320,10,70);//brazo dos 
rect(702,390,15,10);//mano dos

//manga dos 
fill(255,252,196);
stroke(0);
rect(615,320,20,20);

  //cuerpo
 fill(255,252,196);
 stroke(0);
 rect(635,300,60,200);
 
//manga derecha 
fill(255,252,196);
stroke(255,252,196);
rect(695,320,20,20);

//boton 
fill(255);
stroke(100);
ellipse(664,313,10,10);

//corbata 
fill(255);
stroke(0);
triangle(635,300,650,320,665,300);
triangle(665,300,680,320,695,300);

// ropa violeta 
fill(171,84,203);
stroke(119,37,152);
rect(632,335,65,200);

//detalles ropa 
fill(198,88,242);
stroke(0);
rect(650,345,13,10); // medio
rect(632,345,10,5);// primero
rect(670,345,12,8); // tercero
rect(690,345,5,5); // ultimo

//triangulo blanco en ropa violeta 
fill(255,252,196);
stroke(255,252,196);
triangle(660,335,665,345,670,335);

//pelo cuadrado
fill(83,227,62);
stroke(83,227,62);
rect(640,90,25,15); // primer cuadro
triangle(650,90,660,120,680,90); // cara abajo uno 
triangle (610,120,630,90,640,105); // pelo cae adelante 
triangle(650,100,660,80,688,108);// pelo cara dos 
triangle(680,100,695,100,705,110);// pelo cae oreja 
triangle(690,100,690,90,710,100); // ultimo pelo
triangle(670,100,680,70 ,690, 100);//pelo arriba dos 
rect(670,90,20,15); //relleno
triangle(630,70,650,90,660,80); //pelo arriba uno 
rect(630,90,30,20); //relleno pelo adelante 
rect(650,85,25,15); //releno pelo atras 

//linea 
fill(0);
stroke(0);
line(400,0,400,400);

}



  
  
  
