// tuto pdf : https://eduscol.education.fr/sti/sites/eduscol.education.fr.sti/files/ressources/pedagogiques/9734/9734-3-la-gestion-des-sprites.pdf
// image png : data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAACQCAMAAADA1J4TAAAAJ1BMVEUAAABipMUgYmJWkXS58vZKKRjA8MD+/v721aTelGJwsJCLShDNi2pDbjgyAAAESklEQVRogc1a25bbIAyMLxB70///3nY6RwcMAuF1RVcPSdaSZrSOAxrLr9egreuy7Pv7j+37sqzraN6wPSboA9Ar/nZEpwBnAgvgqf9nEDCC3p9JYAFc7V4BswjaANsWY+6Ncdvu5PsT9AHg/fqKEa9452sZ0SvAm8ACgH/b6EEUP1/93QKmELQB6F1XHCUU/yoj2gV4E4wA4Mi+4x2v+w7/cAHuBBYADD8kRND4V34VGvnuBNZiRcC0HPBzGfFgNX1MQHcOkIeEcBznGYJsKvCEcJ7HEcJIvj9BDbAsAJB0fIblADySR4QgJ6kqYArBceRfIkPSdxQC6K9fMo7lEdfsdQXmLIIaQOstr5ti318V4E4ANy0FlG1JbbU/z65+yc4E6WT9+mOfz+XfG7IQPh/kGpnuBG2T5ez915blmzCOBH2A/CJkjB7RKcCZwAIQPzeUtr9ZwDSCHgDakBjZWGFRvpM/h6APIN5tO89LUzWUP4OgD4A26jxjxCKMjSTG1618f4I+ABOOY9veb2yGIRTpZgHeBBYA/Th6HJfNfLSASQQtAHpjZDuV2q3xArwJRgDo1xcyM9+dwAKQCIoOzW/muxNYADCRUYDQChDR8b8I2H4LQNG4vkqRUtNLAYj4HwQUPNK+7nt9qVGknCf9LQKgqP4JBEwXAu1LDn9NZJ4GT9mEkzyfQNKTkNVOgVyIeNe8tEa+O0EpgerWlsKuJTLEL2JyNoEkfz7fk0KSDemlZrsTjIGIuMAIwmWO9pCgDyAXABdjXgo3C3AmsADGhkidAqYQ9AFww5XtCW+//vM52mMCC4AN+nHECIGBTf5O/gyCPgCOUFygtUWbW4rAfr4/QR+A/zjFBTbF97uUeVYB3gQWgAgMnAI2YJq/U8AkghaADIH2XQQGRyhlRLsAb4IRAPq5DHA5rsdczXx3AgsAlsQJrDXmaua7E6RBnGx45RCLR9IIhe3ZaL4/QR+A8oleae8xJsrHXEYBzgS5wBMA3lZKfsqn9HgPf1J5BMWJbPjNOZobQToJ8gBSPea6PqCkjblS9qUAd4J8zJVCXoVRHvEUaiOga3ZzjuZEICQwyAhtjIXxEQQGJQYKKunXlRKEVhbgTyA035VAgwMyd4K2sTXnl6hdBI/tMUEfgF5ZCtoRnQKcCSwA8ctDBS1/s4BpBG0ACgwOUfDA2L0CZhD0AdhGcfwjt8Lv5PsTWACvFwZAFBcikm7luxNYAICAn+IC46ByFGfl+xNYANIcwFcpmJF8dwILgBEUGDIavUaY+e4EFkBa0Oi/W4A/gQVAP1tzDd4sYBKB3MTXAdg26pu+VcAcAg6qWm2J9hiiGBaJvAClAXMnIADFUpuglE+J4DylZcFtHXXsO4FAbilpFCJSW+25iMBKQE0jIEAaWNUA+ahLJ0gCUb2K3AnyUVUNkSSG5k/0/KT2164EKV0GVndERi6gJLvI9yL4DUEYfckBuz/3AAAAAElFTkSuQmCC

Personnage perso1;
int index=0;
int coordX_perso=0;
int coordY_perso=0;

void setup() {
  size(320, 320);
  smooth();
  perso1 = new Personnage("sprite_32-36.png");
  imageMode(CENTER);
}

void draw() {
  background(0);
  perso1.afficher();

}

void keyPressed() {
  if (key == CODED) {  
      switch(keyCode) {
         case UP : 
           perso1.sens_marche(0);
           perso1.deplace(50,50); break;
         case DOWN : break;
         case LEFT : break;
         case RIGHT : break;    
      }
  }
}
