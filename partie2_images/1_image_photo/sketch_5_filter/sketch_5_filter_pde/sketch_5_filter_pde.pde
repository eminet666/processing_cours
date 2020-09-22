PImage img;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  img = loadImage("image.jpg");
  //image(img, 0, 0);
}

void draw() {
  image(img, 0, 0);  
  filter(BLUR);
} 

/*
THRESHOLD : Converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. The parameter must be between 0.0 (black) and 1.0 (white). If no level is specified, 0.5 is used.
GRAY : Converts any colors in the image to grayscale equivalents. No parameter is used.
OPAQUE : Sets the alpha channel to entirely opaque. No parameter is used.
INVERT : Sets each pixel to its inverse value. No parameter is used.
POSTERIZE : Limits each channel of the image to the number of colors specified as the parameter. The parameter can be set to values between 2 and 255, but results are most noticeable in the lower ranges.
BLUR : Executes a Guassian blur with the level parameter specifying the extent of the blurring. If no parameter is used, the blur is equivalent to Guassian blur of radius 1. Larger values increase the blur.
ERODE : Reduces the light areas. No parameter is used.
DILATE : Increases the light areas. No parameter is used. 
*/
