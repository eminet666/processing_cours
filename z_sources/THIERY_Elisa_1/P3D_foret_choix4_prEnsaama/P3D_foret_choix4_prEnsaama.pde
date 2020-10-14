//nb d'arbres //<>//
int nb = 50;

//coordonnées des arbres avec des tableaux
int[] x; int[] y; int[] z;
int[] l; int[] h; int coef=2;
float[] ombre;

//tableaux pour images
PImage[] arbres;
int[] nbA;

//variantes de la teinte avec des tableaux
float[] colour_r; float[] colour_g; float[] colour_b;



//gérer la caméra
int camX=0, camY=0;
// vitesse déplacement arbres
int flying = 2;  

//variable des axes colorés
boolean axes = false;

//annoncer les variables de déplacement
int lowX = -1000, highX = 1000;
//int lowY = -50, highY = 50;
int lowZ = 0, highZ = 1000;
int outZ = 1000;
int lowSize = 50, highSize = 200;

//annoncer l'image
PImage img2, img3;
int yImg = 2000, xImg = 10000;
//int yImg3 = 800, xImg3 = 5000;


void setup(){
  fullScreen(P3D);
  
  //générer les tableaux par rapport au nombre d'arbres
  //il y aura autant de possibilité que de nombre d'arbres
  x = new int[nb]; 
  y = new int[nb]; 
  z = new int[nb]; 
  l = new int[nb];
  h = new int[nb];
  ombre = new float[nb];
  colour_r = new float[nb];
  colour_g = new float[nb];
  colour_b = new float[nb];
  nbA = new int[nb];
  
  //tableau des arbres
  arbres = new PImage[6];
  arbres[0] = loadImage("arbre1s1.png");
  arbres[1] = loadImage("arbre2s1.png");
  arbres[2] = loadImage("arbre3s1.png");
  arbres[3] = loadImage("arbre4s1.png");
  arbres[4] = loadImage("arbre5s1.png");
  arbres[5] = loadImage("arbre6s1.png");
  
  //entrer les caractériqtiques des tableaux
  //ça permet de dire de où à où l'intérieur du tableau est variable
  for (int i = 0; i < nb; i++) {
    x[i] = int(random(lowX, highX));
    y[i] = 0;
    //y = int(random(lowY, highY));    
    z[i] = int(random(lowZ, highZ));
    l[i] = int(random(lowSize, highSize));
    h[i]=l[i]*coef;
    ombre[i] = random(1, 5);
    colour_r[i] = random(255);
    colour_g[i] = random(50,200);
    colour_b[i] = 0.0;
    nbA[i] = int(random(0,5));
  }
  
  
  //trier pour arbres les plus avancés devant
  z = sort(z); 
  
  //chargement image
  img2 = loadImage("nature14.jpg");
  img3 = loadImage("sol3.jpg");
  
  }
  
  void draw (){
  background(100);
  
  //caméra + dans un void pour éviter que les arbres disparaissent avant de sortir de l'écran
  setPerspective();
  
  //axes apparition
   if (axes == true) {
  drawAxes();
 }
  
  //fond
  noTint();
  rectMode(CENTER);
  image(img2,(-1000-xImg)/2,0-yImg);
  
  //sol
      beginShape();
      
      noStroke();
      //fill(121,190,112);
      texture(img3);
      
      vertex(-2500,0,0, 0, 0);
      vertex(-2500,0,1100, 0, 800);
      vertex(2500,0,1100, 5000, 800);    //1100=900 pr mon ordi
      vertex(2500,0,0, 5000, 0);
      
      endShape(CLOSE);
      /*
      beginShape();
      vertex(-10000,0,-50);
      vertex(0,-500,-50);
      vertex(10000,-500,-50);
      vertex(10000,0,-50);
      endShape(CLOSE);*/
  
  for (int i = 0; i < nb; i = i+1) {
   
    beginShape();
    //placement teinture
    tint(0,40,0);
    //noFill();
    fill(0,50,0);
    //placement de l'image
    texture(arbres[nbA[i]]);
    //stroke(0);
    //strokeWeight(5);
    noStroke();
   
      vertex(x[i],      y[i]-ombre[i],       z[i], 1386, 964);
      vertex(x[i]+l[i], y[i]-ombre[i],       z[i], 0, 964);
      vertex(x[i]+l[i], y[i]-ombre[i],  z[i]-h[i], 0,0 );
      vertex(x[i],      y[i]-ombre[i],  z[i]-h[i],  1386, 0);
    endShape(CLOSE);
  }
  
  //création des arbres
  for (int i = 0; i < nb; i = i+1) {
   
    beginShape();
    //placement teinture
    tint(colour_r[i], colour_g[i], colour_b[i]);
    //placement de l'image
    texture(arbres[nbA[i]]);
    noStroke();
    
    //coordonnées des emplacements
      vertex(x[i],      y[i],       z[i], 1386, 964);
      vertex(x[i]+l[i], y[i],       z[i], 0, 964);
      vertex(x[i]+l[i], y[i]-h[i],  z[i], 0,0 );
      vertex(x[i],      y[i]-h[i],  z[i],  1386, 0);
    endShape(CLOSE);


    z[i] += flying;      // déplacement (en avant) du nombre de pixel défini à chaque tour de draw
  }
  
  
  
  testOutZ();           //recréer les arbres s'ils sont sortis du champs de vision
  }
  
  void testOutZ() {
   for (int i = 0; i < nb; i = i+1) {
     if(z[i] > outZ) {
       decaleArrays();   //decaler les indices dans le tableau
       newInstance();     //creation d'un nouvel arbre
     }     
  } 
}

void decaleArrays() {
       for (int i=nb-1; i >=1 ; i--) {   //[i-1]= change valeur du tableau de manière décroissante   
         x[i] = x[i-1];                  // les valeurs du tableau changent en avançant
         y[i] = y[i-1];                  // !!!! les tableaux commencent à 0 (d'où le nb-1 car les valeurs sont décalées)
         z[i] = z[i-1];                  // à la fin de la boucle, le [0] a la même valeur que [1]
         l[i] = l[i-1];                  // la boucle newInstance() est donc nécessaire pour commencer une nouvelle boucle
         h[i] = h[i-1];
         ombre[i] = ombre[i-1];
         colour_r[i] = colour_r[i-1]; 
         colour_g[i] = colour_g[i-1];
         colour_b[i] = colour_b[i-1];
         nbA[i] = nbA[i-1];              //ça permet aussi de décaler les valeurs puisque ça avance
                
       }  
}

//rempli de nouvelles valeurs dans [0]
void newInstance() {
    int highZ0 = lowZ + (highZ - lowZ)/nb;
  
    x[0] = int(random(lowX, highX));
    y[0] = 0;
    //y = int(random(lowY, highY));    
    z[0] = int(random(lowZ, highZ0));
    l[0] = int(random(lowSize, highSize));
    h[0]=l[0]*coef;
    ombre[0] = random(1, 5);
    colour_r[0] = random(255);
    colour_g[0] = random(50,200);
    colour_b[0] = 0.0; 
    nbA[0] = int(random(0,5));
}

void keyPressed(){
  if (key == 'p') {                         //capture d'écran
    saveFrame("screen_####.png");
  }
  if (key == 'l') {                         //afficher/cacher axes si 'l' cliqué
      if(axes == false) { axes = true;}
      else {axes = false;}
    }
}
  
void drawAxes() {                           //dessin des axes
  strokeWeight(50);
  stroke(255,0,0);line(0,-300,50,200,-300,50);
  stroke(0,255,0);line(0,-300,50,0,-500,50);
  stroke(0,0,255);line(0,-300,50,0,-300,250);
}

void setPerspective(){                      //caméra
  
  translate(width/2, height/2, 0);
  //float fov = PI/3.0; 
  //float cameraZ = (height/2.0) / tan(fov/2.0); 
  //perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
/*
  camX = int(map(mouseY, 0, height, -5, -45));
  camY = int(map(mouseX, 0, width, -30, 30));
*/
  //camX=-45; camY=0;
  
  camX = int(map(mouseY, 0, height, -5, -45));
  camY = int(map(mouseX, 0, width, -20, 20));

  
  rotateX(radians(camX));                   //rotation du pdv
  rotateY(radians(camY));
  
}
