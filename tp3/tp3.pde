PImage ilusion; 
int columnas = 20;
int filas = 35;    
int tamaño;

void setup() {
  size(800, 400);  
  tamaño = 300 / columnas; 
  background(0); 
  ilusion = loadImage("imagen.jpg"); 
}

void draw() {
  image(ilusion, 0, 0); 
  
  float startX = width * 0.75; 
  float startY = height / 2;  

  // Circulos del lado izquierdo
  for (int i = 0; i < columnas / 2; i++) { // la mitad de las columnas (izquierdo)
    for (int j = 0; j < filas; j++) {
      //  ubicación de la grilla (lado izquierdo)
      float xIzquierda = startX - i * tamaño * 1.5;
      float y = startY + (j - filas / 2) * tamaño;

      // tamaño del círculo basado en la distancia desde el centro (izquierdo)
      float distCentroIzquierda = dist(xIzquierda, y, startX, startY);
      float maxDistIzquierda = dist(0, 0, startX - width * 0.6, startY);
      float tamañoCirculoIzquierda = map(distCentroIzquierda, 0, maxDistIzquierda, tamaño * 0.2, tamaño * 1.5);

      // círculo (lado izquierdo)
      fill(255);
      noStroke(); 
      ellipse(xIzquierda, y, tamañoCirculoIzquierda, tamañoCirculoIzquierda);
    }
  }
  
  // círculos del lado derecho
  for (int i = 0; i < columnas / 2; i++) { // la mitad de las columnas (derecho)
    for (int j = 0; j < filas; j++) {
      // posición x e y basada en la ubicación de la grilla (lado derecho)
      float xDerecha = startX + i * tamaño * 1.5;
      float y = startY + (j - filas / 2) * tamaño;

      // tamaño del círculo basado en la distancia desde el centro (derecho)
      float distCentroDerecha = dist(xDerecha, y, startX, startY);
      float maxDistDerecha = dist(0, 0, startX - width * 0.6, startY);
      float tamañoCirculoDerecha = map(distCentroDerecha, 0, maxDistDerecha, tamaño * 0.2, tamaño * 1.5);

      // círculo derecho 
      fill(255); 
      noStroke(); 
      ellipse(xDerecha, y, tamañoCirculoDerecha, tamañoCirculoDerecha);
    }
  }
}
