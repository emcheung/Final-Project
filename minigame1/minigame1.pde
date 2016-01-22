float bx, by, fx, fy, fv, sx, sy, sv, tx, ty, tv, mode;
PImage boat, fish, worm, shark, trash;

void setup() {
  size(1280, 720);
  boat = loadImage("boat.png");
  fish = loadImage("fish.png");
  worm = loadImage("worm.png");
  shark = loadImage("shark.png");
  trash = loadImage("trash.png");
  bx = width/2;
  by = 0;
  sx = random(width*-1, width*2);
  sy = random(height/4, height*3/4);
  sv = 8;
  tx = random(width*-1, width*2);
  ty = random(height/4, height*3/4);
  tv = 4;
  mode = 0;
}

void draw() {
  //Water and sky
  noStroke();
  fill(105, 250, 255);
  rect(0, 0, width, height);
  fill(0, 85, 250);
  rect(0, height/4, width, height);
  
  //Boat
  image(boat, bx, by);

  //Fishing Line
  strokeWeight(2);
  stroke(150);
  line(bx, by, bx, mouseY);

  //Worm
  image(worm, bx - 11, mouseY);
  
  //Shark
  if(sx <= width*-1 || sx >= width*2) {
    sv *= -1;
  }
  if(sv < 0) {
    scale(-1);
  }
  image(shark, sx, sy);
  sx += sv;
  
  //Trash
  if(tx <= width*-1 || tx >= width*2) {
    tv *= -1;
  }
  image(trash, tx, ty);
  tx += tv;
  
  if(mode == 0) {
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