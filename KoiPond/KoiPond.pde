foreground f;
fish[] fishSet = new fish[5];
int bound = 3;
/**
Some songs I want to use with this visualization:
Suteki Meppou
emaycee - Long Nights (https://soundcloud.com/max-ekkaxai/long-nights)
**/
void setup() {
 size(800,500);
 background(0);
 f = new foreground("./PoolSurface.jpg");
 fishSet[0] = new fish(100,100); fishSet[1] = new fish(200,200);
 fishSet[2] = new fish(300,0); fishSet[3] = new fish(600,100);
 fishSet[4] = new fish(500,50);
}

void draw() {
 background(0);
 //f.display();
 //f.updatePosition();
 for(int i=0; i<fishSet.length;i++){
   fishSet[i].render();
   fishSet[i].updatePosition();
 }
 
}

class fish {
  int xPos; int yPos; int xVel;
  PImage kFishImage;
  
  fish(int x, int y){
   kFishImage = loadImage("./GreenFish300.png");
   xPos = x;   yPos = y;
   xVel = (int) random(-2,-1);
  }
  
  void updatePosition(){
    xPos += xVel;
    if(xPos <= -kFishImage.width ) xPos = width;
  }
  
  void render() {    
    image(kFishImage,xPos,yPos);
  }
  
}

class lilypad {
 /** 
 This one is pretty simple. Randomly select a location within the screen and sway back and forth    
 **/ 
}

class foreground {
  PImage fGroundImage;
  int xPos; int offset;
  int xMod;
  int startX;
  
  foreground(String url){ //Select an image using a url input in the constructor
    fGroundImage = loadImage(url);
    //Start rendering the image at the top left corner of the screen

  }
  
  void updatePosition() {
    
  }
  
  void display(){
      tint(255,126.0);
      image(fGroundImage,xPos,0);
      
  }
}