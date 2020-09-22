PImage img1, img2;
String filtre;

void setup() {
  size(400,400);
  background(224);

  img1 = loadImage("arbre_1.gif");
  img2 = loadImage("arbre_1.gif");
 
  println("b = BLEND, a = ADD, s = SUBSTRACT, d = DARKEST, l = LIGHTEST");
  println("i= DIFFERENCE,  e = EXCLUSION, m = MULTIPLY,  c = SCREEN, ..."); 
  
}

void draw() {
    image(img1, 100, 0, 200, 400);
    image(img2, 125, 0, 200, 400);
}

void keyPressed() {
  println(key);
  switch(key) {
     case 'b' : blend(100,0, 200, 400, 100,0, 200, 400, BLEND); break;
     case 'a' : blend(100,0, 200, 400, 100,0, 200, 400, ADD); break;
     case 's' : blend(100,0, 200, 400, 100,0, 200, 400, SUBTRACT); break;
     case 'd' : blend(100,0, 200, 400, 100,0, 200, 400, DARKEST); break;
     case 'l' : blend(100,0, 200, 400, 100,0, 200, 400, LIGHTEST); break;      
     case 'i' : blend(100,0, 200, 400, 100,0, 200, 400, DIFFERENCE); break;
     case 'e' : blend(100,0, 200, 400, 100,0, 200, 400, EXCLUSION); break;
     case 'm' : blend(100,0, 200, 400, 100,0, 200, 400, MULTIPLY); break;   
     case 'c' : blend(100,0, 200, 400, 100,0, 200, 400, SCREEN); break;
     case 'r' : blend(100,0, 200, 400, 100,0, 200, 400, REPLACE); break;   

     default: blendMode(BLEND); 
  }  
  
}
// https://processing.org/reference/blend_.html

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
OVERLAY - A mix of MULTIPLY and SCREEN. Multiplies dark values, and screens light values.
HARD_LIGHT - SCREEN when greater than 50% gray, MULTIPLY when lower.
SOFT_LIGHT - Mix of DARKEST and LIGHTEST. Works like OVERLAY, but not as harsh.
DODGE - Lightens light tones and increases contrast, ignores darks. Called "Color Dodge" in Illustrator and Photoshop.
BURN - Darker areas are applied, increasing contrast, ignores lights. Called "Color Burn" in Illustrator and Photoshop.
*/
