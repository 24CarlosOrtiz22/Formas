int shapeX, shapeY;
color fillColor;

void setup() {
  size(800, 600);
  shapeX = width / 2;
  shapeY = height / 2;
}

void draw() {
  background(220);
  
  fill(fillColor);
  noStroke();
  ellipse(shapeX, shapeY, 50, 50);
}

void keyPressed() {
  if (key == ' ') {
    shapeX = int(random(width));
    shapeY = int(random(height));
    fillColor = color(random(255), random(255), random(255));
  }
}
