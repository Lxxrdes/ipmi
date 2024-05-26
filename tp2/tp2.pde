PImage fondo, freddy, chica, bonnie, foxy, todos;
PFont fuente;
int pantalla = 0, tiempo, diametro, py;
String textofinal;

void setup() {
  size(640, 480);
  fondo = loadImage("fondo.jpg");
  //fuente = loadFont("Noto-48.vlw");
  fuente = createFont("Borniarte.ttf", 48);
  textFont(fuente);
  
  freddy = loadImage("freddy.jpg");
  chica = loadImage("chica.jpg");
  bonnie = loadImage("bonnie.jpg");
  foxy = loadImage ("foxy.jpg");
  todos = loadImage ("todos.jpeg");
  diametro = width/7;
  py = height;
  textofinal = "¿estas preparado?";
}

void draw() {

  if (pantalla == 0) {
    image(fondo, 0, 0, width, height);
    push();
    fill(255,random (255));
    text("FIVE NIGHTS AT FREDDY'S",72,60);
      textSize(40);
    textAlign(CENTER);
    pop();
    push();
    rect(245, 400, 160, 50);
    fill(0);
      textSize(32);
    text(" COMENZAR",240,435);
    pop();
  }
  
  
  
  if (pantalla == 1) {
    image(freddy, 0, 0, width, height);
  textSize(30);
      textAlign(LEFT);
    text("Sus personajes principales, son: ",0, 50);
      textSize(70);
    text("Freddy ", mouseX, mouseY);
  }
  
  
  if (pantalla == 2) {
    push();
    image(chica, 0, 0, width, height);
    textSize(70);
    fill( 255,255, mouseY);
    text("Chica",450, 450);
    pop();
  }
  if (pantalla == 3) {
    push();
    image(bonnie, 0, 0, width, height);
        textSize(70);
    fill (100,0,255, mouseX);
    text("Bonnie",40, 450);
    pop();
  }
  if (pantalla == 4) {
    push();
    background(0);
    image(foxy, 0, 0, width, height);
        textSize(70);
    fill(255,0, mouseX, mouseY);
    text ("Foxy",10,50);
    pop();
  
  }
  
  if (pantalla == 5) {
    push();
    background(0);
    image(todos, 0, 0, width, height);
    fill(0);
    text("¿estas preparado?", 0, 0); float tono= map(py,height,250, 255, 250);
    pop();
    push();
     fill(255);
     textSize(50);
     textAlign(CENTER);
    text(textofinal, 100, py, 440, 1200);
    pop();
    py-=2;
    
   
   
    push();
    fill(255);
    circle(width/2, height/2, diametro);
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/2, height/2);
    pop();
  
   
  }
  
 

 tiempo++;
  if (tiempo >= 200) {
    tiempo = 0;
    if (pantalla != 5) {
      pantalla++;
    }
  }
}
void mouseClicked() {
  //pantalla++;
  if (pantalla > 5) {
    pantalla = 0;
  }
    if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }

  }
