PImage img; 
float lapse = 0;  
int capture=0;
void setup() { 
  size(1000, 800); 
  img = loadImage("12_ran.jpg");
  img.resize(800, 600); 
  
  mouseX = width / 2;
} 

void draw() { 
 
  translate(80,-70);
	background(random(0, 10),0,random(0, 40));
  fill(random(0, 255),0,random(0, 100));
  noStroke();
  float tiles = mouseX/2;
  float tileSize = width/tiles; 
 
  translate(tileSize/2,tileSize/2);
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) { 
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float size = map(brightness(c),0,255,3.5,0); 
      
      ellipse(x*tileSize, y*tileSize, size, size);
 
    }
  }
}

void mousePressed(){
  capture++;
  if (millis() - lapse > 300){
    
    save("img"+capture+".jpg");
    }
 
    lapse = millis();
 
}
