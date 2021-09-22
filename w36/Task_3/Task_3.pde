int x = 200;
int y = 125;
int w = 250;
int h = 250;

int delayValue = 1000;

color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color background = color(0, 0, 0);
color grey = color(128, 128, 128);

int COLOR = 1;

void setup() {
  size(400, 800);
  smooth();
  background(background);
  display();
}

void draw() {
  changeLights();
  changeState();
}

void display() {
  fill(0);
  rect(0, 0, width, height);
  ellipseMode(CENTER);
  fill(grey);
  ellipse(x, y, w, h);   // Red
  ellipse(x, y*3, w, h); // Yellow
  ellipse(x, y*5, w, h); // Green

  //Lights are grey when not on!
}

void changeLights() {
  delay(delayValue);

  //Red
  if (COLOR == 1) {
    fill(red);
    ellipse(x, y, w, h); 
    fill(grey); 
    ellipse(x, y*3, w, h);
    fill(grey);
    ellipse(x, y*5, w, h);
  }
  //Red, yellow
  if (COLOR == 2) {
    fill(red);
    ellipse(x, y, w, h);
    fill(yellow);
    ellipse(x, y*3, w, h);
    fill(grey);
    ellipse(x, y*5, w, h);
  }
  //Green
  if (COLOR == 3) {
    fill(green);
    ellipse(x, y*5, w, h);
    fill(grey);
    ellipse(x, y*3, w, h);
    fill(grey);
    ellipse(x, y, w, h);
  }
  //Yellow
  if (COLOR == 4) {
    fill(yellow);
    ellipse(x, y*3, w, h);
    fill(grey);
    ellipse(x, y, w, h);
    fill(grey);
    ellipse(x, y*5, w, h);
  }
}

void changeState() {

  COLOR ++;

  if (COLOR > 4) {
    COLOR = 1;
  }
}
