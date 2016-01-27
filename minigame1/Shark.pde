class Shark {
  PImage shark, shark1;
  PVector loc, vel;

  Shark() {
    shark = loadImage("shark.png");
    shark1 = loadImage("shark1.png");
    loc = new PVector(random(width*-1, width*2), random(height/4, height*3/4));
    vel = new PVector(8, 0);
  }

  void swim() {
    move();
    bound();
  }

  void move() {
    if (vel.x >= 0) {
      image(shark, loc.x, loc.y);
    } else {
      image(shark1, loc.x, loc.y);
    }
    loc.x += vel.x;
  }

  void bound() {
    if (loc.x <= width*-1 || loc.x >= width*2) {
      vel.x *= -1;
      loc.y = random(height/4, height*3/4);
    }
  }
  
  boolean contact() {
    if (bx-93 >= loc.x && bx+93 <= loc.x+600 && mouseY-47 >= loc.y && mouseY+47<=loc.y+241){
      return true;
    } else {
      return false;
    }
  }
}