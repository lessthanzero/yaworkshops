int[][] numbers = {{1, 2}, {3, 4}, {5, 6}};

void setup() {
  size(640, 480);
  //numbers[1][1] = 10;
}

void draw() {
  println(numbers[1][1]);
  background(128, 128, 128);
  
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 2; j++) {
      ellipse(width/2 - (i * 20), height/2 + (j * 20), numbers[i][j] * 10, numbers[i][j] * 10);
    }
  }
}