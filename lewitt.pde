void setup() {
  size(100, 100);
  noLoop();  // draw() will not loop
}

int x = 0;
int y = 20;
int c = 0;
int index = 0;
int[] previousLine = new int[width];

void draw() {
  index = int(random(-2,2));
  x = x + 1;
  y = y + index;
  if (x > width) {
    x = 0;
    y = y + 15;
  }
  point(x, y);
  // store x,y in the array previousLine
  previousLine[x] = y;
  // start next line
  // set starting y value
  // read value from previousLine
  // modify y value
  // draw first point
  // read nextValue from previousLine
  // next point drawn should trend back to nextValue
  //
  printArray(previousLine);
}

void mousePressed() {
  loop();  // Holding down the mouse activates looping
}

void mouseReleased() {
  noLoop();  // Releasing the mouse stops looping draw()
}
