float bx, by, mode;
PImage boat, worm;

void setup() {
  size(1280, 720);
  boat = loadImage("boat.png");
  worm = loadImage("worm.png");
  bx = width * 1.25;
  by = -100;
  mode = 0;
}

void draw() {
  noStroke();
  fill(105, 250, 255);
  rect(0, 0, width, height);
  fill(0, 85, 250);
  rect(0, height/4, width, height);

  scale(0.4);
  image(boat, bx, by);

  strokeWeight(5);
  stroke(0);
  line(bx + 10, by + 150, bx + 10, mouseY * 2.5);

  image(worm, bx - 25, mouseY * 2.5);


  if(mode == 0) {
  scale(2.5);
  background(0);
  fill(255);
  textAlign(CENTER, TOP);
  textSize(100);
  text("[ M I N I G A M E  1 ]", width/2, height/2-250);
  textSize(75);
  text("FISHING", width/2, height/2-125);
  fill(150);
  textSize(50);
  text("click to continue...", width/2, height/2+200);
  textAlign(LEFT);
  fill(255);
  textSize(20);
  String des = "Catch as many fish as you can! Watch out for garbage and the shark though.";
  text(des, 250, height/2, 800, height);
  }
}

void mousePressed() {
  if(mode == 0) {
    mode = 1;
  }
}