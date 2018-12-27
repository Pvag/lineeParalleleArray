final int nLinee = 10; // Numero delle linee
final int deltaX = 30; // Distanza tra le linee
final int xIniziale = 30; // Posizione di partenza
int intervalloX = 10; // Intervallo tra le posizioni x
int[] posizioniX; // Dichiarazione array

void setup() {
  size(600, 300);
  background(30);
  stroke(255);
  strokeWeight(3);
  frameRate(1);

  initPosizioniX();
}

void initPosizioniX() {
  posizioniX = new int [nLinee]; // Creazione array
  for (int i = 0; i < nLinee; i++) {
    posizioniX [i]= xIniziale + i*deltaX + deltaX;
  }
}

void draw() {
  linee();
}

void linee() {
  background(30);
  for (int i = 0; i < nLinee; i++) {
    line(posizioniX[i], 0, posizioniX[i], height);
    // Cambia direzione
      posizioniX[i] = posizioniX[i] + intervalloX;
  }
  intervalloX = - intervalloX;
}
