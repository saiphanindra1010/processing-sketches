int n = 10000;

float[] m = new float[n];
float[] x = new float[n];
float[] y = new float[n];
float[] vx = new float[n];
float[] vy = new float[n];
void setup() {
  fullScreen();
  fill(0, 32);
  reset();
}

void draw() {
  noStroke();
  rect(0, 0, width, height);

  for (int i = 0; i < n; i++) {
    float dx = mouseX - x[i];
    float dy = mouseY - y[i];

    float d = sqrt(dx*dx + dy*dy);
    if (d < 1) d = 1;

    float f = sin(d * 0.04) * m[i] / d;

    vx[i] = vx[i] * 0.5 + f * dx;
    vy[i] = vy[i] * 0.5 + f * dy;
  }

  for (int i = 0; i < n; i++) {
    x[i] += vx[i];
    y[i] += vy[i];

    if (x[i] < 0) x[i] = width;
    else if (x[i] > width) x[i] = 0;

    if (y[i] < 0) y[i] = height;
    else if (y[i] > height) y[i] = 0;

    if (m[i] < 0) stroke(#FFE600);
    else stroke(#FF05FC);

    point(x[i], y[i]);
  }
}

//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

void reset() {
  for (int i = 0; i < n; i++) {
    m[i] = randomGaussian() * 16;
    x[i] = random(width);
    y[i] = random(height);
  }
}

//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

void mousePressed() {
  reset();
}
