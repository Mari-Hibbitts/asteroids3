class Asteroid extends GameObjects {

  Asteroid() {
    lives = 1;
    location = new PVector (random (0, width), random (0, height));
    velocity = new PVector (0, 1);
    velocity.rotate (random(0, TWO_PI));
    size = 100;
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate (random(0, TWO_PI));
    size = s;
  }
  void show() {

    noFill();
    stroke(255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();

    int i = 0;
    while (i<myObjects.size()) {
      GameObjects myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {

        if (dist(location.x, location.y, myObj.location.x, myObj.location.y) <= size/2+myObj.size) {

          if (size > 25) {
            myObj.lives = 0;
            lives = 0;
            myObjects.add(new Asteroid(size/2, location.x, location.y));
            myObjects.add(new Asteroid(size/2, location.x, location.y));
          } else {
            lives = 0;
          }
        }
      }
      i++;
    }
  }
}
