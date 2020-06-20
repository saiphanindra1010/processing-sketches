class Star
{
 float x;
 float y;
  float z;

 Star()
{
  x=random(-width,width);
  y=random(-height,height);
  z=random(width);
  }
  
  void update()
  {
    z=z-speed;
    if(z<1)
    {
      x=random(-width,width);
  y=random(-height,height);
  z=width;
    }
  }
    void show()
  {
    fill(random(0,255), random(0,255), random(0,255));
    noStroke();
    float starx =map(x/z,0,1,0,width);
    float stary =map(y/z,0,1,0,height);
    float ran =map(z,0,width,30,0);
    ellipse(starx,stary,ran+25,ran+25);
    
  }
}
