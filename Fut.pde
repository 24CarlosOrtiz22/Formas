float ballX, ballY;
float ballSpeedX = 0;
float ballSpeedY = 0;
float goalX, goalY, goalWidth, goalHeight;
boolean goalScored = false;
void setup() {
  size(800, 400);
  ballX = width / 2;
  ballY = height - 30;  
  goalWidth = 20;
  goalHeight = 150;
  goalX = width - goalWidth;
  goalY = height / 2 - goalHeight / 2;
}
void draw() {
  background(220);  
  ballX += ballSpeedX;
  ballY += ballSpeedY;  
  ballX = constrain(ballX, 15, width - 15);
  ballY = constrain(ballY, 15, height - 15);  
  fill(255, 0, 0);
  ellipse(ballX, ballY, 30, 30); 
  fill(0);
  rect(goalX, goalY, goalWidth, goalHeight);
  if (ballX > goalX && ballY > goalY && ballY < goalY + goalHeight) {
    goalScored = true;
  }
  if (goalScored) {
    textSize(32);
    fill(0);
    text("¡GOL!", width / 2 - 50, height - 50);
  }
}
void keyPressed() {
  if (keyCode == LEFT) {
    ballSpeedX = -2;
  } else if (keyCode == RIGHT) {
    ballSpeedX = 2;
  } else if (keyCode == UP) {
    ballSpeedY = -2;
  } else if (keyCode == DOWN) {
    ballSpeedY = 2;
  }
}
void keyReleased() {
  ballSpeedX = 0;
  ballSpeedY = 0;
}
