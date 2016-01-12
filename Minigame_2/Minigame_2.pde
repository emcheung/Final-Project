//Minigame 2: Manufacture
PImage mat, rice, nori, sauce, wasabi, fish, avocado;

void setup() {
  size(1280, 720);
  mat = loadImage("mat.png");
  rice = loadImage("rice.png");
  nori = loadImage("nori.png");
  sauce = loadImage("sauce.png");
  wasabi = loadImage("wasabi.png");
  fish = loadImage("fish.png");
  avocado = loadImage("avocado.png");
}

void draw() {
  image(mat, 0, 0);
  image(rice, 80, 30);
  image(nori, 80, 30+200+30);
  image(sauce, 80, height-30-200);
  image(wasabi, width-200-80, 40);
  image(fish, width-200-80, 50+165+40);
  image(avocado, width-200-80, height-165-40);

  textSize(20);
  fill(255);
  text("RICE", 160, 180);
  text("NORI", 160, 365);
  text("SAUCE", 145, 600);
  fill(0);
  text("WASABI", width-200-20, 170);
  text("FISH", width-200-20, 365);
  text("AVOCADO", width-200-40, 620);
}