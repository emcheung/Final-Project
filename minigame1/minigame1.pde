float count;
Boat b;

void setup() {
  size(1280, 720);
  colorMode(HSB, 360, 100, 100);
  count = 0;
}

void draw() {
  noStroke();
  fill(190, 80, 99);
  rect(0, 0, width, height);
  fill(210, 90, 99);
  rect(0, height/4, width, height);
  
  b.display(width/2, height/4 + sin(count));
  count += 0.1;
}