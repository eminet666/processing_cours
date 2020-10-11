PImage img;

void setup(){
  size(600,600, P3D);
  img = loadImage("arbre.gif");
}

void draw (){
    background(100);
  
    //déplace l'origine au centre de l'écran
    translate(width/2, height/2, 0); 

    // image 1
    beginShape();
        texture(img);
        tint(37,235,51);
        vertex(-20, -20, 0, 0, 0);
        vertex(70, -20, 0, 100, 0);
        vertex(70, 130, 0, 100, 100);
        vertex(-20, 130, 0, 0, 100);
    endShape(CLOSE);
  
    // image 2  
    beginShape();
        texture(img);
        //noTint();
        tint(14,119,22);
        vertex(0, 0, 0, 0, 0);
        vertex(90, 0, 0, 100, 0);
        vertex(90, 150, 0, 100, 100);
        vertex(0, 150, 0, 0, 100);
    endShape(CLOSE);

}
