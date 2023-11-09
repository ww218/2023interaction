PImage img;
void setup(){
  size(800,600);
  img =loadImage("keyboard.png");
  rectMode(CENTER);///用中心點來畫出四邊形
}
void draw(){
  background(#FFFFF2);///淡黃色背景
  image(img, 0, 600-266);
  fill(255,0,0,128);///半透明的
  rect( mouseX, mouseY, 28, 30, 5);///依滑鼠座標印出方塊，5設定圓滑的角
}
void mousePressed(){
  print(mouseX,mouseY);//定位、印出mousey座標
}
