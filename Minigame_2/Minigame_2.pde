//Minigame 2: Manufacture //<>//
PVector mouse;
int gMode, timer, number;
Title screen;
Ingredients mat, rice, nori, sauce, wasabi, fish, avocado;

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
}

void draw() {
  //Game: Setup
  mouse = new PVector(mouseX, mouseY);

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
    int r = int(random(5));
    int n = int(random(5));
    int s = int(random(5));
    int w = int(random(5));
    int f = int(random(5));
    int a = int(random(5));
    String num = "ORDER #" + number + ": ";
    String order = r+" Rice "+n+" Nori "+s+" Sauce "+w+" Wasabi "+f+" Fish "+a+" Avocado";
    text(num + order, width/2, 23);
    PVector mouse = new PVector (mouseX, mouseY);


    //if () {
    //  number+= 1;
    //}
  }
}

void mouseClicked() {
  if (gMode == 0) {
    gMode = 1;
  }
}