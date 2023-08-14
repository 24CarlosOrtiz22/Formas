void setup() {
  size(400, 400);
  ellipseMode(CENTER);
  noStroke();
  fill(150);
  ellipse(width/2, height/2, 100, 100);
}

void draw() {
}

void mouseClicked() {
  fill(random(255), random(255), random(255));
  ellipse(width/2, height/2, 100, 100);
}
