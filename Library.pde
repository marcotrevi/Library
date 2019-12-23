graphics G = new graphics();
frame F = new frame(10, 40, 200, 100);
frame F1 = new frame(230, 170, 200, 300);

void setup() {
  size(500, 500);
}

void draw() {
  F.display();
  F1.display();
}