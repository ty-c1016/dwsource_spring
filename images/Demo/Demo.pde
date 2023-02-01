PImage art;

void setup() {
  size(600, 800);

  art = loadImage("art.jpg");

  art.loadPixels();

  image(art, 0, 0);
}

void draw() {
  for (int p=0; p < art.pixels.length; p++) {
    color c = art.pixels[p];
    color newC = color( red(c), green(c), frameCount % 256 );
    art.pixels[p] = newC;
  }
  art.updatePixels();
  image(art, 0, 0);
}
