PImage img1, img2;
String filtre;

void setup() {
  size(400,400);
  background(224);
  // Images must be in the "data" directory to load correctly
  img1 = loadImage("arbre_1.gif");
  img2 = loadImage("arbre_1.gif");
 
  println("b = BLEND, a = ADD, s = SUBSTRACT, d = DARKEST, l = LIGHTEST");
  println("i= DIFFERENCE,  e = EXCLUSION, m = MULTIPLY,  c = SCREEN, r = REPLACE"); 
  
}

void draw() {
    image(img1, 100, 0, 200, 400);
    image(img2, 125, 0, 200, 400);
}
// https://www.processing.org/reference/PImage_filter_.html

void keyPressed() {
  println(key);
  switch(key) {
     case 'b' : blendMode(BLEND); break;
     case 'a' : blendMode(ADD); break;
     case 's' : blendMode(SUBTRACT); break;
     case 'd' : blendMode(DARKEST); break;
     case 'l' : blendMode(LIGHTEST); break;      
     case 'i' : blendMode(DIFFERENCE); break;
     case 'e' : blendMode(EXCLUSION); break;
     case 'm' : blendMode(MULTIPLY); break;   
     case 'c' : blendMode(SCREEN); break;
     case 'r' : blendMode(REPLACE); break;   

   

     default: blendMode(BLEND); 
  }  
  
}

/*
BLEND - linear interpolation of colors: C = A*factor + B. This is the default.
ADD - additive blending with white clip: C = min(A*factor + B, 255)
SUBTRACT - subtractive blending with black clip: C = max(B - A*factor, 0)
DARKEST - only the darkest color succeeds: C = min(A*factor, B)
LIGHTEST - only the lightest color succeeds: C = max(A*factor, B)
DIFFERENCE - subtract colors from underlying image.
EXCLUSION - similar to DIFFERENCE, but less extreme.
MULTIPLY - multiply the colors, result will always be darker.
SCREEN - opposite multiply, uses inverse values of the colors.
REPLACE - the pixels entirely replace the others and don't utilize alpha (transparency) values
*/
