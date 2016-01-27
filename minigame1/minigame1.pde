float bx, by, mode;
int score;
PImage bucket, boat, worm, bottle, can;
Fish f;
Shark s;
Trash b, c;
Title title;

void setup() {
  size(1280, 720);
  
  f = new Fish();
  s = new Shark();
  b = new Trash();
  c = new Trash();
  
  title = new Title();
  bucket = loadImage("bucket.png");
  boat = loadImage("boat.png");
  worm = loadImage("worm.png");
  bottle = loadImage("bottle.png");
  can = loadImage("can.png");
  
  bx = width/2;
  by = 0;
  mode = 0;
  score = 0;
}

void draw() {
  if (mode == 0) {
  title.display();
  } else {
    
    //Water and sky
    noStroke();
    fill(105, 250, 255);
    rect(0, 0, width, height);
    fill(0, 85, 250, 150);
    rect(0, height/4, width, height);

    //Score
    image(bucket, 0, 20);
    fill(255);
    textAlign(CENTER);
    textSize(50);
    text(score, 70, 130);

    //Boat
    image(boat, bx, by);

    //Fishing Line
    strokeWeight(2);
    stroke(150);
    line(bx, by, bx, mouseY);

    //Worm
    image(worm, bx - 11, mouseY);

    //Shark
    s.swim();
    
    //Fish
    f.swim();
    f.hook(bx - 50, mouseY, bx);
    if (f.isCaught()) {
      score += 1;
      f.reset();
    }
    
    //Trash
    b.drift(bottle);
    c.drift(can);
  }
}

void mousePressed() {
  if (mode == 0) {
    mode = 1;
  }
}