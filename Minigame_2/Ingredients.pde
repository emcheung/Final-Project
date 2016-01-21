class Ingredients {
  int m, r, n, s, w, f, a;
  boolean ma, ri, no, sa, wa, fi, av;
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
    ma = false;
    ri = false;
    no = false;
    sa = false;
    wa = false;
    fi = false;
    av = false;
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

  void place() {
    if (mouseX <=280  && mouseX >=80 && mouseY <= 230 && mouseY >= 30) {
      ri = true;
      if (ri = true) {
        rect(500, 100, 500, 500);
        fill(255);
      }
    }
  }
}