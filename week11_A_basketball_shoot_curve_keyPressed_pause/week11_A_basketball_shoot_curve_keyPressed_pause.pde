PImage imgRack;
int state = 0;
void setup(){
  size(500,500);
  imgRack = loadImage("rack.png");
}
boolean gameOver=false;
void keyPressed(){
  gameOver = true;///在某個狀態下，game over
}
void draw(){
  background(255);
  image(imgRack,0,0);
  if(flying){
    if(!gameOver){
      x += vx;
      y += vy;
      vy+= 0.98;
    }
  }else{
    x = mouseX;
    y = mouseY;
    if(mousePressed){
      fill(255);ellipse(posX,posY,20,20);
      line( posX, posY, x, y);
    }
  }
  fill(#FFA652);ellipse(x,y,20,20);
}
boolean flying = false;
float x,y,vx,vy;
float posX=-100, posY=-100;
void mousePressed(){
  posX = mouseX;
  posY = mouseY;
  flying = false;
}
void mouseReleased(){
  vx = posX-mouseX;
  vy = posY-mouseY;
  flying = true;
}
