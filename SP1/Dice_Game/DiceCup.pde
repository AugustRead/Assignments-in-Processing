class DiceCup {

  int dices = 0;
  color colorDie = color(0);   

  Die[] dice = new Die[diceAmount+2];

  DiceCup() {
    
}
  void addDie(Die die) {
    dices++;
    dice[dices] = die;
  }


  void shake() {
    for (int i = dices; i > 0; i--) {
      dice[i].roll();
    }
  }
  void draw(int _x, int _y, int _dieSize) {

    background(65);
    int x = _x;
    int y = _y;
    int dieSize = _dieSize;
    
    for (int i = 1; i <= dices; i++) {
      
      fill(colorDie);

      if (dice[i+1] != null) {
        if (dice[i].faceValue == dice[i+1].faceValue) {

          dice[i].draw(x, y, dieSize);
          y = Math.round(y + dieSize * spacingFactor);
        } else {          

          dice[i].draw(x, y, dieSize);
          x = Math.round(x + dieSize * spacingFactor);

          y = _y;
        }
      }
      
      dice[i].draw(x, y, dieSize);
    }
  }
}
