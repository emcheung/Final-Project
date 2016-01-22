//Minigame 2: Manufacture //<>// //<>//
int gMode, timer, number;
Title screen;
Ingredients mat, rice, nori, sauce, wasabi, fish, avocado;
boolean ma, ri, no, sa, wa, fi, av;
int w, f, a;

void setup() {
  size(1280, 720);

  gMode=0;
  timer = second();
  number = 1;

  mat = new Ingredients();
  rice = new Ingredients();
  nori = new Ingredients();
  sauce = new Ingredients();
  wasabi = new Ingredients();
  fish = new Ingredients();
  avocado = new Ingredients();

  ma = false;
  ri = false;
  no = false;
  sa = false;
  wa = false;
  fi = false;
  av = false;
}

void draw() {
  //Game: Setup

  //Title Screen
  if (gMode == 0) {
    screen = new Title();
    screen.display();
  }

  //Setup screen
  if (gMode == 1) {
    timer = second();
    int number = 1; 

    //Display images & labels
    mat.display();
    rice.display();
    nori.display();
    sauce.display();
    wasabi.display();
    fish.display();
    avocado.display();

    //Game: order
    textSize(20);
    textAlign(CENTER);
    fill(0);

    String num = "ORDER #" + number + ": ";
    String order = "1 Rice "+"1 Nori "+"1 Sauce "+w+" Wasabi "+f+" Fish "+a+" Avocado";
    text(num + order, width/2, 23);
    //if () {
    //  number+= 1;
    //}
    if (ma == true) {
      nori.nPlace();
    }
    if (no == true) {
      textSize(20);
      fill(255, 0, 0);
      text("NORI", 180, 365);
    }
  }
}

void mouseClicked() {
  if (gMode == 0) {
    gMode = 1;
    newOrder();
  }
  if (mouseButton == RIGHT) {
    newOrder();
  }
  if (gMode == 1 && dist(mouseX, mouseY, 180, 365) <= 75) {
    no = true;
  }
  if (gMode ==1 && no==true && dist(mouseX, mouseY, width/2, height/2) <= 200) {
    ma = true;
  }
}

void newOrder() {
  w = int(random(3));
  f = int(random(2));
  a = int(random(3));
}