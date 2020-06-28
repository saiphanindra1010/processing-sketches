int frames = 180;
float diam = 600, theta;

void setup() {
  fullScreen(P2D);
  smooth(8);
  noStroke();
}

void draw() {
  background(#817F7F);
  pushMatrix();
  translate(width/2, height/2);
  rotate(theta);
  fill(0);
  arc(0,0,diam, diam, PI/2,PI+PI/2);
  fill(255);
  arc(0,0,diam, diam, PI+PI/2,TWO_PI+PI/2);
  
  fill(0);
  ellipse(0,-diam/4, diam/2, diam/2);
  fill(255);
  ellipse(0,diam/4, diam/2, diam/2);
  
  fill(255);
  ellipse(0,-diam/4, diam/8, diam/8);
  fill(0);
  ellipse(0,diam/4, diam/8, diam/8);
    
  popMatrix();
  
  theta += TWO_PI/frames;
  

  
}
