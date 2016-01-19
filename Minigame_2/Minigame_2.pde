//Minigame 2: Manufacture
PImage mat, rice, nori, sauce, wasabi, fish, avocado;
PVector mouse;
int gMode, timer, number;

void setup() {
  size(1280, 720);
  gMode=0;
  timer = second();
  number = 1;

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
  mouse = new PVector(mouseX, mouseY);

  //Title Screen
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

  //Setup screen
  if (gMode == 1) {
    timer = second();
    int number = 1; 
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
    text("RICE", 175, 180);
    text("NORI", 175, 365);
    text("SAUCE", 180, 600);
    fill(0);
    text("WASABI", width-200, 170);
    text("FISH", width-200, 365);
    text("AVOCADO", width-200, 620);

    //Game: order
    textSize(15);
    textAlign(CENTER);
    fill(0);
    String num = "ORDER #" + number;
    String order = "Rice"+"Nori"+"Sauce"+"Wasabi"+"Fish"+"Avocado";
    text(num + order, width/2, 18);

    //if (){
    //number+= 1;
    //}
  }
}

void mouseClicked() {
  if (gMode == 0) {
    gMode = 1;
  }
}