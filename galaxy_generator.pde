float angle = 0;
float angle2 = 180;
float radius = 150;
float centerX = 350;
float centerY = 350;
int levels = 1;  
int directionChangeInterval = 300;  
float angleIncrement1 = 0.02;
float angleIncrement2 = 0.02;
int red, green, blue;

String folderPath = "C:/Uni/Social Media/galaxy_generator/newgalaxy";

void setup() {
  size(700, 700);
  noStroke();
  background(0);
  changeDirection(); 
}

void draw() {
  float mouseInfluenceX = mouseX - width / 2;
  float mouseInfluenceY = mouseY - height / 2;

  drawCircles(centerX + mouseInfluenceX, centerY + mouseInfluenceY, radius, levels, angle, angle2);

  angle += angleIncrement1;
  angle2 += angleIncrement2;

  if (frameCount % directionChangeInterval == 0) {
    changeDirection();
  }
}

void drawCircles(float x, float y, float rad, int lvl, float ang1, float ang2) {
  if (lvl == 0) {
    return;
  }

  float innerRadius = rad / 2;
  int nextLevel = lvl - 1;
  float newAngle1 = ang1 * 2;
  float newAngle2 = ang2 * 2;

  float x1 = x + cos(ang1) * rad;
  float y1 = y + sin(ang1) * rad;
  float x2 = x + cos(ang2 + PI) * rad;
  float y2 = y + sin(ang2 + PI) * rad;

  if (lvl == 1) {
    fill(red, green, blue);
    ellipse(x1, y1, rad * 2, rad * 2);
    fill(red, green, blue);
    ellipse(x2, y2, rad * 2, rad * 2);
  } else {
    drawCircles(x1, y1, innerRadius, nextLevel, newAngle1, newAngle2);
    drawCircles(x2, y2, innerRadius, nextLevel, newAngle1, newAngle2);
  }
}

void changeDirection() {
  red = (int)random(255);
  green = (int)random(255);
  blue = (int)random(255);
  angleIncrement1 = random(-0.05, 0.05);
  angleIncrement2 = random(-0.05, 0.05);
}

void keyPressed() {
  if (key == ' ') {  
    saveFrame(folderPath + "-####.png");
  }
}
