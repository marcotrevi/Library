class math {

  math() {
  }

  float[] convex_interpolation(float t, float x1, float y1, float x2, float y2) {
    // t is between 0 and 1
    // t=0 --> (x1,y1)
    // t=1 --> (x2,y2)
    float[] P = new float[2];
    P[0] = (1-t)*x1+t*x2;
    P[1] = (1-t)*y1+t*y2;
    return P;
  }

  float[] linear_transform(float x, float y, float a, float b, float c, float d) {
    // 2D matrix-vector multiplication.
    // matrix is (a b // c d)
    // vector is (x // y)
    float[] P = new float[2];
    P[0] = a*x+b*y;
    P[1] = c*x+d*y;
    return P;
  }
}