//Rivoira lourdes
//Recuperatorio
//https://youtu.be/o_uIeuOpe70


PImage ilusion;
int columnas;
int filas;
int tamaño;

void setup() {
  size(800, 400);
  ilusion = loadImage("imagen.jpg");
  reiniciar();
}

void draw() {
  background(0);
  image(ilusion, 0, 0, width / 2, height);
  tamaño = width / 2 / columnas;

  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float x = (i * tamaño) + (width / 2) + tamaño / 2;
      float y = j * tamaño + tamaño / 2; 
      float distanciaDiagonal = calcularDistanciaDiagonal(i, j);  
      float maxDistancia = dist(0, 0, columnas - 1, filas - 1);
      float size = map(distanciaDiagonal, 0, maxDistancia, tamaño * 0.1, tamaño * 0.9);
      float distancia = dist(mouseX, mouseY, x, y);

     
      if (distancia < size / 2) {
        int colorElipse = color(random(255), random(255), random(255));
        dibujarElipse(x, y, size, colorElipse); 
      } else {
        dibujarElipse(x, y, size, color(255));
      }
    }
  }

 
}

void keyPressed() {
  if (key == 'a') {
    columnas++;
    filas++;
    redraw();
  } else if (key == 'd') {
    columnas = max(1, columnas - 1);
    filas = max(1, filas - 1);
    redraw();
  } else if (key == 'r') {
    reiniciar(); 
    redraw();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    columnas = (int) random(5, 25);  
    filas = (int) random(5, 25);     
    redraw();
  }
}

void dibujarElipse(float x, float y, float size, int colorElipse) {
  fill(colorElipse);
  noStroke();
  ellipse(x, y, size, size);
}

void reiniciar() {
  columnas = 18;
  filas = 18;
  tamaño = 20;
}

float calcularDistanciaDiagonal(int i, int j) {
  return dist(i, j, columnas - 1 - i, filas - 1 - j);
}
