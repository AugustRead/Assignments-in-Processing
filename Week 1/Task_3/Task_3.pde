int x = 200;
int y = 125;
int w = 250;
int h = 250;

int frameCounter = 0;

boolean ready = true;
boolean start = false;
boolean stop = false;

color red = color(150, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color background = color(0, 0, 0);
color grey = color(128, 128, 128);

void setup() {
  size(400, 800);
  background(background);
  frameRate(1);
 
  fill(0);
  rect(0, 0, width*0.95, height*0.95);

  ellipseMode(CENTER);
  fill(grey);
  ellipse(x, y, w, h);   // Red
  ellipse(x, y*3, w, h); // Yellow
  ellipse(x, y*5, w, h); // Green
}

void draw() {

  frameCounter ++;
  if (frameCounter == 1 && start == true) {
    fill(red);
    frameCounter = 0;
    start = false;
    stop = true;
    
  } else {
    fill(grey);
  }
  ellipse(x, y, w, h);
  if (frameCounter == 1 && stop == true) {
    fill(yellow);
    frameCounter = 0;
    stop = false;
    ready = true;
  } else {
    fill(grey);
  }
  ellipse(x, y*3, w, h);
  if (frameCounter == 1 && ready == true) {
    fill(green);
    frameCounter = 0;
    ready = false;
    start = true;
  } else {
    fill(grey);
  }
  ellipse(x, y*5, w, h);
}
