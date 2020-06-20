Star[] stars =new Star[800];
float speed;
void setup()
{
  size(1000,1000);
  
  for(int i=0;i<stars.length;i++)
  
  {
    stars[i]=new Star();
  }
}
void draw()
{
  speed=5;
  background(#0C0115);
   for(int i=0;i<stars.length;i++)
  
  {
    stars[i].update();
    stars[i].show();
  }
}
