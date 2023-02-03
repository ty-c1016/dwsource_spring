PImage image;

void setup() {
  size(600,600);
  
  image = loadImage("smth.jpg");
  
  image.loadPixels();
}

void draw() {
  image(image, 0, 0);
  
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      image = loadImage("smth.jpg");
    }
    else if (key == 'q' || key == 'Q') {
      colorQuad(image);
      image.updatePixels();
    }
  }
}

void colorQuad(PImage image) {
  for (int p=0; p < image.pixels.length; p++) {
    color c = image.pixels[p];
    if (p <= pixels.length / 4) {
      color newC = color( red(c), green(c), 0);
      image.pixels[p] = newC;
    }
    if (p <= pixels.length / 2 && p > pixels.length / 4) {
      color newC = color( red(c), 0, blue(c));
      image.pixels[p] = newC;
    }
    if (p > pixels.length / 2 && p <= pixels.length / 4 * 3) {
      color newC = color( 0, green(c), blue(c));
      image.pixels[p] = newC;
    }
  }
}
