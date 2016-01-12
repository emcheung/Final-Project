//Minigame 2: Manufacture
PImage mat, rice, nori, sauce, wasabi, fish, avocado;
PVector mouse;
int gMode, timer;

void setup() {
  size(1280, 720);
  int gMode=0;
  
    //Images
    mat = loadImage("mat.png");
  rice = loadImage("rice.png");
  nori = loadImage("nori.png");
  sauce = loadImage("sauce.png");
  wasabi = loadImage("wasabi.png");
  fish = loadImage("fish.png");
  avocado = loadImage("avocado.png");
}

void draw() {
  //Game: Setup
  int timer = second();
  mouse = new PVector(mouseX, mouseY);

  if (gMode == 0) {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  2 ]", width/2, height/2-250);
    textSize(75);
    text("MANUFACTURING", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "In this stage, you'll be making sushi. Click on the ingredient, then follow the directions given. If you make the wrong sushi or mess up the order, then 5 seconds will be added to your time! The restaurant needs 20 pieces of sushi!";
    text(des, 250, height/2, 800, height);
  }


  if (gMode == 1) {
    //Layout: images
    image(mat, 0, 0);
    image(rice, 80, 30);
    image(nori, 80, 30+200+30);
    image(sauce, 80, height-30-200);
    image(wasabi, width-200-80, 40);
    image(fish, width-200-80, 50+165+40);
    image(avocado, width-200-80, height-165-40);

    //Layout: labels
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
}

void mouseClicked() {
  if (gMode == 0) {
    gMode = 1;
  }
}