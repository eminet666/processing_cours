Personnage perso1;

int coordX_perso1=0;
int coordY_perso1=0;
int vitesse=1;
int sens=0;


void setup() {
  size(400, 400);
  smooth();
  perso1 = new Personnage("perso1.png");
}


void draw() {
  background(255);
  
  if (keyPressed)
  {
    switch (sens) {
    case 0:    
      perso1.sens_marche(0);
      if (coordY_perso1>0)coordY_perso1-=vitesse;
      break;
    case 1: 
      perso1.sens_marche(1);
      if (coordX_perso1<width-32) coordX_perso1+=vitesse;
      break;
    case 2:  
      perso1.sens_marche(2);
      if (coordY_perso1<height-36)coordY_perso1+=vitesse;
      break;
    case 3:  
      perso1.sens_marche(3); 
      if (coordX_perso1>0)coordX_perso1-=vitesse;
      break;
    }
    perso1.deplace(coordX_perso1, coordY_perso1);
  } else
    perso1.arret(coordX_perso1, coordY_perso1);
}


void keyPressed() {
  if (key == CODED) {
    switch (keyCode) {
    case UP:     sens=0; break;
    case RIGHT:  sens=1; break;
    case DOWN:   sens=2; break;
    case LEFT:   sens=3; break;
    }
  }
}
