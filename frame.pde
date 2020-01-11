class frame {
  float X, Y, W, H;
  float XC, YC;
  float xzoom = 10;
  float yzoom = 10;
  float xmin, ymin, xmax, ymax;

  frame(float X, float Y, float W, float H) {
    this.X = X;
    this.Y = Y;
    this.W = W;
    this.H = H;
    // default center values
    XC = X+0.5*W;
    YC = Y+0.5*H;
    xmin = x(X);
    xmax = x(X+W);
    ymin = y(Y+H);
    ymax = y(Y);
  }

  void display() {
    stroke(G.frame_border);
    fill(G.frame_background);
    rect(X, Y, W, H);
  }
  
  void axes() {
    stroke(G.frame_axes);
    strokeWeight(1);
    line(X, YC, X+W, YC);
    line(XC, Y, XC, Y+H);
    stroke(255,0,0);
  }

  void f_ellipse(float x, float y, float a, float b) {
    ellipse(X(x), Y(y), a, b);
  }

  void f_rect(float x, float y, float a, float b) {
    rect(X(x), Y(y), a, b);
  }

  void f_line(float x1, float y1, float x2, float y2) {
    line(X(x1), Y(y1), X(x2), Y(y2));
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