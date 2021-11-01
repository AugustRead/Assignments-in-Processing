class Die {

  int faceValue;
  int MIN = 1;
  int MAX = 6;

  color colorDie;
  color colorEye;


  Die() {
    //colorDie = color(255);
    //colorEye = color(0);
  }


  void roll() {
    faceValue = MIN + (int)(Math.random() * ((MAX - MIN) + 1));
    if (faceValue % 2 == 0) {
      colorDie = color(0);
      colorEye = color(random(50, 255), random(50, 255), random(50, 255));
    } else {
      colorDie = color(0);
      colorEye = color(random(50, 255), random(50, 255), random(50, 255));
    }
  }

  void draw(int _x, int _y, int _size) {

    float eyeSize = _size * 0.16;

    noStroke();
    fill(colorDie);
    rectMode(CENTER);
    ellipseMode(CENTER);

    rect(_x, _y, _size, _size, 14);

    fill(colorEye);

    if ((faceValue == 1) || (faceValue == 3) || (faceValue == 5)) {
      circle(_x, _y, eyeSize);
    }
    if ((faceValue == 2) || (faceValue == 3) || (faceValue == 4) ||(faceValue == 5) || (faceValue == 6)) {
      circle(_x-_size*1/3, _y-_size*1/3, eyeSize);
      circle(_x+_size*1/3, _y+_size*1/3, eyeSize);
    }
    if ((faceValue == 4) ||(faceValue == 5) || (faceValue == 6)) {
      circle(_x-_size*1/3, _y+_size*1/3, eyeSize);
      circle(_x+_size*1/3, _y-_size*1/3, eyeSize);
    }
    if ((faceValue == 6)) {
      circle(_x+_size*1/3, _y, eyeSize);
      circle(_x-_size*1/3, _y, eyeSize);
    }
  }
}
