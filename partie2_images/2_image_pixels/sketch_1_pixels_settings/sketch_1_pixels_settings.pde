// fonction setup() : instructions exécutées une seule fois
void setup() {
  background(255,255,255);     
  size(400,400); 
}    

// fonction draw() : instructions exécutées en boucle
void draw() {

    loadPixels();  // crée un tableau pixels[] d'entiers de longueur de 400x400 
    
    // boucle de définition des valeur du tableau de pixels
    for (int i = 0; i < pixels.length; i++) {
        float rand = random(255);                   // tirage aléatoire d'une valeur <256
        color c = color(rand);                      // definition de la couleur
    
        pixels[i] = c;                              // affecte la couleur au pixel
    }
  
    // affichage des pixels ainsi calculés
    updatePixels();   
}
