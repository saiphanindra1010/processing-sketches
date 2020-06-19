
float a,b,c;
float rotY, rotZ;

void setup()
{
 size(800,800,P3D);
}
void draw()
{
   rotY=(float(mouseX)/width*2*PI);
   rotZ=(float(frameCount)/100);
 background(#292929);
  strokeWeight(2);
  translate(width/2,height/2, 0);
  noFill();
 
 stroke(#5594d4);
  rotateY(rotY);
  rotateZ(rotZ);
  sphere(250);
  rotation();

}
void rotation()
{
  if (mousePressed){
  for(int i=2;;i++)
{
rotY= i;
rotZ= i;
}
//  rotY= i*PI/(width>>1);
//rotZ= i*PI/(height>>1);
}

  //if (mousePressed) {
  //  rotY= mouseY*PI/(width>>1);
  //  rotZ= mouseX*PI/(height>>1);
  //}
}
