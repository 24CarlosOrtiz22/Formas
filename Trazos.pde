int centerX, centerY;
ArrayList<PVector> lines = new ArrayList<PVector>();

void setup() {
  size(800, 600);
  centerX = width / 2;
  centerY = height / 2;
}

void draw() {
  background(220);
  
  ellipse(centerX, centerY, 60, 60);
  
  for (PVector lineEnd : lines) {
    line(centerX, centerY, centerX + int(lineEnd.x), centerY + int(lineEnd.y));
  }
}

void mouseClicked() {
  PVector lineEnd = new PVector(mouseX - centerX, mouseY - centerY);
  lines.add(lineEnd);
}
