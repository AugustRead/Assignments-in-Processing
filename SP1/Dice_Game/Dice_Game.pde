//Press space to throw dice!

DiceCup cup = new DiceCup();

int dieSize = 100;
float dieSpacingFactor = 1.5;
int diceAmount = 12;

void setup() {
  size(1024, 768);
  background(65);
  for (int i = 0; i < diceAmount; i++) {
    cup.addDie(new Die());
  }
}

void draw() {
}

void keyPressed() {
  if (keyCode == 32) {


    cup.shake(); 
    cup.draw(int(width*0.1), height/8, dieSize);
  }
}
