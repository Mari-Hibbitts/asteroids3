void keyPressed() {

  if (keyCode == UP)  upkey = true;
  if (keyCode == DOWN)  downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT)  rightkey = true;
  if (keyCode == ' ')    spacekey = true;
}

void keyReleased() {

  if (keyCode == UP)  upkey = false;
  if (keyCode == DOWN)  downkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT)  rightkey = false;
  if (keyCode == ' ')    spacekey = false;
}

//mouse
void mouseClicked () {
  if (mode == INTRO) {
    introClicks();
  }
  if (mode == GAME) {
    gameClicks();
  }
  if (mode == PAUSE) {
    pauseClicks();
  }
  if (mode == GAMEOVER) {
    gameoverClicks();
  }
}
