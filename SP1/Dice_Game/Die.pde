class Die {

  int faceValue;
  color colorEye;

  int MIN = 1; 
  int MAX = 6;


  Die() {
    
}

  void roll() {
    faceValue = MIN + (int)(Math.random() * ((MAX - MIN) + 1));
    
    colorEye = color(random(50,255), random(50,255), random(50,255));
    println(faceValue);
  }

  void draw(int _x, int _y, int _dieSize) {

    float eyeSize = _dieSize * 0.16;
   
    rectMode(CENTER);
    ellipseMode(CENTER);
    rect(_x, _y, _dieSize, _dieSize, 14);
    fill(colorEye);

    if (faceValue % 2 == 1) {
      circle(_x, _y, eyeSize);
    }
    if (faceValue >= 2 && faceValue <= 6) {
      circle(_x-_dieSize*1/3, _y-_dieSize*1/3, eyeSize);
      circle(_x+_dieSize*1/3, _y+_dieSize*1/3, eyeSize);
    }
    if (faceValue >= 4 && faceValue <= 6) {
      circle(_x-_dieSize*1/3, _y+_dieSize*1/3, eyeSize);
      circle(_x+_dieSize*1/3, _y-_dieSize*1/3, eyeSize);
    }
    if ((faceValue == 6)) {
      circle(_x+_dieSize*1/3, _y, eyeSize);
      circle(_x-_dieSize*1/3, _y, eyeSize);
    }
  }
}
