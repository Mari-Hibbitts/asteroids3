//asteroids october 4th

//modes
int mode;
final int INTRO = 0;
final int CONTROLS = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
Ufo myUfo;
ArrayList<GameObjects> myObjects;


void setup() {
  mode = GAME;
  rectMode(CENTER);
  size (800, 600);
  myShip = new Ship();
  myObjects = new ArrayList<GameObjects>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
    myObjects.add(new Ufo());
}

void draw() {
  background(0);

  //modes
  if (mode == INTRO) {
    intro();
  } else if (mode == CONTROLS) {
    keyPressed();
    keyReleased();
    mousePressed();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("Error: Mode = " + mode);
  }
}
