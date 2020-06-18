PImage img;
void setup() {
  fullScreen();
   img = loadImage("error.jpg");
}

void draw() {
windraw();

}
void windraw()
{
  image(img, mouseX, mouseY);

}
