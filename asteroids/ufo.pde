class Ufo extends GameObjects {

  PVector direction;
  int timer;
  int y;
  int x;

  Ufo() {
    lives = 1;
    y = int(random(0, height));
    x = -10;

    timer = 0;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
  }

  void show() {
    fill(0, 255, 0);
    ellipse(location.x, location.y, 30, 40);
    fill(255);
    ellipse(location.x, location.y, 20, 10);
  }

  void act() {
    super.act();
    location.x++;
    if (location.y > width+10) {
      timer ++;
    }

    int i = 0;
    while (i<myObjects.size()) {
      GameObjects myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
      if (dist(location.x, location.y, myObj.location.x, myObj.location.y) <35){
      lives = 0;
      }
      }
      i++;
    }
  }
}
