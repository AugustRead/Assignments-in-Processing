class DiceCup {

  int numberOfDice = 0;

  Die[] dice = new Die[50];
  DiceCup() {
  }
  void addDie(Die die) {
    numberOfDice++;
    dice[numberOfDice] = die;
  }
  void sortDice() {
    for (int i = numberOfDice; i > 0; i--) {
      for (int j = numberOfDice; j > 0; j--) {
        if (dice[i].faceValue >= dice[j].faceValue) {
          Die temp = dice[i];
          dice[i] = dice[j]; 
          dice[j] = temp;
        }
      }
    }
  }
  void shake() {
    for (int i = numberOfDice; i > 0; i--) {
      dice[i].roll();
      println(dice[i].faceValue);
    }
    sortDice();
  }
  void draw(int _x, int _y, int _dieSize) {

    background(65);
    int x = _x;
    int y = _y;
    int dieSize = _dieSize;

    for (int i = 1 ; i <= numberOfDice; i++) {

      if (dice[i+1] != null) {
        if (dice[i].faceValue == dice[i+1].faceValue) {

          dice[i].draw(x, y, dieSize);
          y = Math.round(y + dieSize * dieSpacingFactor);
          
        } else {          

          dice[i].draw(x, y, dieSize);
          x = Math.round(x + dieSize * dieSpacingFactor);

          y = _y;
        }
      }
      dice[i].draw(x, y, dieSize);
    }
  }
}
