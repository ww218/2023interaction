PImage imgRack;
int state = 0;
void setup(){
  size(500,500);
  imgRack = loadImage("rack.png");
}
void draw(){
  background(255);
  image(imgRack,0,0);
  if(mousePressed){
    fill(255);ellipse(posX,posY,20,20);
    line(posX,posY,mouseX,mouseY);
  }
  fill(#FFA625);ellipse(mouseX,mouseY,20,20);
}
float posX=-100, posY=-100;
void mousePressed(){
  posX = mouseX;
  posY = mouseY;
}
