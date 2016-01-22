class Ingredients {
  int m, r, n, s, w, f, a;
  PImage mat, rice, nori, sauce, wasabi, fish, avocado;

  Ingredients() {
    //Initialize
    mat = loadImage("mat.png");
    rice = loadImage("rice.png");
    nori = loadImage("nori.png");
    sauce = loadImage("sauce.png");
    wasabi = loadImage("wasabi.png");
    fish = loadImage("fish.png");
    avocado = loadImage("avocado.png");
  }

  void display() { 
    //Images
    image(mat, 0, 0);
    image(rice, 80, 30);
    image(nori, 80, 30+200+30);
    image(sauce, 80, height-30-200);
    image(wasabi, width-200-80, 40);
    image(fish, width-200-80, 50+165+40);
    image(avocado, width-200-80, height-165-40);

    //Labels
    textSize(20);
    fill(255);
    text("RICE", 180, 180);
    text("NORI", 180, 365);
    text("SAUCE", 180, 600);
    fill(0);
    text("WASABI", width-180, 170);
    text("FISH", width-180, 365);
    text("AVOCADO", width-180, 620);
  }

  void nPlace() {
    rectMode(CENTER);
    if (no = true) {
      fill(8, 36, 5);
      stroke(8, 36, 5);
      rect(width/2, height/2, 650, 500);
    }
  }
  void rPlace() {
    if (ri = true) {
      fill(255);
      stroke(255);
      rect(width/2, height/2, 550, 400);
    }
  }
}