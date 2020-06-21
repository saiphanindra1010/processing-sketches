void setup()
{
   size(600,400);
}
void draw()
{
  background(0);
  stroke(255);
  noFill();
drawcircle(300,200,300);
}
void drawcircle(int x,int y,int d)
 {
ellipse(x,y,d,d);

 }
