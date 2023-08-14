void setup() {
  size(400, 400);
  background(240);
  noLoop();
}
void draw() {
  for (int i = 0; i < 50; i++) {
    float x = random(width);
    float y = random(height);
    int shapeType = int(random(3));
    if (shapeType == 0) {
      fill(random(255), random(255), random(255));
      ellipse(x, y, 30, 30);
    } else if (shapeType == 1) {
      fill(random(255), random(255), random(255));
      triangle(x, y, x + 20, y - 40, x + 40, y);
    } else {
      fill(random(255), random(255), random(255));
      rect(x, y, 30, 30);
    }
  }
}
void mousePressed() {
  redraw();
}
