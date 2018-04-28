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
 clear();
 //f.display();
 //f.updatePosition();
 for(int i=0; i<fishSet.length;i++){
   fishSet[i].render();
   fishSet[i].updatePosition();
 }
}

class fish {
  PVector pos; PVector currVelocity ;
  PImage kFishImage;
  
  fish(int x, int y){
   kFishImage = loadImage("./GreenFish300.png");
   pos = new PVector();   currVelocity = new PVector();
   pos.x = x;   pos.y = y;
   currVelocity.x = random(-2,-1);   currVelocity.y = 0;
  }
  
  void updatePosition(){
    pos = pos.add(currVelocity);
    if(pos.x <= -kFishImage.width ) pos.x = width;
  }
  
  void render() {    
    image(kFishImage,pos.x,pos.y);
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