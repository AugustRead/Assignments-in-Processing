DiceCup myCup;

int dieSize = 100;
int diceAmount = 6;
float spacingFactor = 1.5;

void setup() {
  background(65);
  size(1024, 768);
    
  myCup = new DiceCup();
  
  for (int i = 0; i < diceAmount; i++) {
    myCup.addDie(new Die());
  }
}

void draw() {
}

void keyPressed() {
  if (keyCode == 32) {
    
    myCup.shake();
    myCup.draw(int(width*0.1), height/8, dieSize);
  }
}
