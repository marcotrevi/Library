class frame {
  float x, y, w, h;
  float XC, YC;
  float xzoom = 10;
  float yzoom = 10;

  frame(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    // default center values
    XC = x+0.5*w;
    YC = y+0.5*h;
  }

  void display() {
    stroke(G.frame_border);
    rect(x, y, w, h);
  }

  void f_ellipse(float x, float y, float a, float b) {
    ellipse(X(x), Y(y), a, b);
  }

  void f_rect(float x, float y, float a, float b) {
    rect(X(x), Y(y), a, b);
  }

  // from screen coords to frame coords
  float X(float x) {
    return XC + xzoom*x;
  }

  float Y(float y) {
    return YC - yzoom*y;
  }

  // from frame coords to screen coords
  float x(float X) {
    return (X-XC)/xzoom;
  }

  float y(float Y) {
    return (YC-Y)/yzoom;
  }
}