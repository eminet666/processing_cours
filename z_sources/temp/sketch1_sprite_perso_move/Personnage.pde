class Personnage {

  PImage perso[];
  PImage spriteSheet;
  int cpt_draw = 0, index = 0, cpt_img=0;
  
  Personnage(String spriteSheetFile) {
      spriteSheet=loadImage(spriteSheetFile);
      perso = new PImage[12];
      for (int y = 0; y < 4; y++)
          for (int x = 0; x < 3; x++)
              perso[y*3+x] = spriteSheet.get(x*32, y*36, 32, 36);
     }

  void afficher() {
      image(perso[0], width/2, height/2);
  }    
    
  void sens_marche(int sens) {
      switch(sens) {
        case 0:    index=0;break;      //
        case 1:    index=3;break;      //
        case 2:    index=6;break;      //
        case 3:    index=9;break;      // 
      }
  }

  void deplace(int coordX, int coordY) {
      if (cpt_draw++ > 5) { //nbr de draw() pour incrementer cpt_img
          cpt_draw = 0;
          cpt_img++;
          if (cpt_img > 2) cpt_img = 0;
      }
      image(perso[index+cpt_img], coordX, coordY);
  }
  
  void arret(int coordX, int coordY) {
      image(perso[index+cpt_img], coordX, coordY);
  }

}
