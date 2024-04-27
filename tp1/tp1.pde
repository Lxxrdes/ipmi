//Rivoira Lourdes
//Comision 2


PImage estacion;

void setup(){
  size (800,400);
  estacion = loadImage ("estacion.jpg"); 
}

void draw(){
  background(255);
  image(estacion,0,0,400,400);
 
  //zona playa
fill(93,173,226);
 line(400,260,800,260);//limite cielo
 rect(400,0,400,260);
 
 fill(33,97,140);//agua
 rect(400,260,800,30);
 
 fill(248,196,113);//limite arena
 line(400,322,800,324);
 rect(400,290,800,33);
 
 fill(81,90,90);//calle
 line(400,291,800,280);
 rect(400,323,800,200);
  
 
 //estacion cuadrados
 fill(123,36,28);
 rect(535,229,10,78);
 fill(52,152,219);
 rect(535,229,10,43);
 
 
fill(123,36,28);
rect(652,229,10,78);
fill(52,152,219);
 rect(652,229,10,43);
 
fill(52,152,219);
 rect(546,239,105,33);
 fill(123,36,28);
 rect(546,272,105,23);
 fill(127,140,141);//gris inter
 square(557,260,13);
 fill(66,73,73);//gris
 rect(524,298,147,15);
 fill(204,209,209);//gris claro
 rect(510,311,165,11);
 
 fill(170,183,184);
 rect(681,207,19,25);
 fill(44,62,60);
 rect(681,207,19,10);//cartel
 fill(186,74,0);
 triangle(674,322,681,312,688,322);
 rect(679,207,4,110);//palo cartel, 
 
 
 
 
 
 //estacion lineas horizontales
 fill(66,73,73);//gris
 rect(528,224,140,9);
 line(545,235,653,235);
 line(535,239,651,239);
 line(545,273,652,273);
 line(545,296,652,296);
 line(523,312,672,312);
 
 //lineas verticales
 line(533,306,534,231);
 line(662,306,661,231);
 line(545,299,545,235);
 line(581,299,581,235);
 line(617,299,617,235);
 line(652,299,652,235);
  
}

void mouseClicked(){
  println(mouseX, mouseY);
}
  
  
   
