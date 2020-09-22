PImage img1, img2;
String filtre;

void setup() {
  size(400,400);
  background(224);
  // Images must be in the "data" directory to load correctly
  img1 = loadImage("arbre_1.gif");
  img2 = loadImage("arbre_1.gif");
 
  println("t = THRESHOLD, g = GRAY, o = OPAQUE, i = INVERT");
  println("p= POSTERIZE,  b = BLUR, e = ERODE,  d = DILATE"); 
}

void draw() {
    image(img1, 0, 0, 100, 300);
    image(img2, 200, 0, 100, 300);
}
// https://www.processing.org/reference/PImage_filter_.html

void keyPressed() {
  println(key);
  switch(key) {
     case 't' : img2.filter(THRESHOLD); println("T"); break;
     case 'g' : img2.filter(GRAY); break;
     case 'o' : img2.filter(OPAQUE); break;
     case 'i' : img2.filter(INVERT); break;
     case 'p' : img2.filter(POSTERIZE, 8); break;      
     case 'b' : img2.filter(BLUR); break;
     case 'e' : img2.filter(ERODE); break;
     case 'd' : img2.filter(DILATE); break;           

     default: 
       img2 = loadImage("arbre_1.gif");
       //image(img2, 200, 0, 100, 300);   
  }  
  
}

/*
THRESHOLD
Converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. The parameter must be between 0.0 (black) and 1.0 (white). If no level is specified, 0.5 is used.

GRAY
Converts any colors in the image to grayscale equivalents. No parameter is used.

OPAQUE
Sets the alpha channel to entirely opaque. No parameter is used.

INVERT
Sets each pixel to its inverse value. No parameter is used.

POSTERIZE
Limits each channel of the image to the number of colors specified as the parameter. The parameter can be set to values between 2 and 255, but results are most noticeable in the lower ranges.

BLUR
Executes a Guassian blur with the level parameter specifying the extent of the blurring. If no parameter is used, the blur is equivalent to Guassian blur of radius 1. Larger values increase the blur.

ERODE
Reduces the light areas. No parameter is used.

DILATE
Increases the light areas. No parameter is used. 
*/
