class Boat {
  PImage boat;  
  float count;

  Boat() {
    boat = loadImage("boat.png");
  }

  void display(float bx, float by) {
    imageMode(CENTER);
    scale(0.4);
    image(boat, bx, by);
  }
}