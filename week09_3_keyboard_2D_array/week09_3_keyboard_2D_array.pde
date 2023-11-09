PImage img;
int [][] pos ={{92,489},{245,525},{178,523},{163,490},{153,457},{195,491},{230,491},{263,491},{324,457},{297,490},{330,490},{365,490},{314,525},{280,524},{356,457},{392,456},{83,456},{186,457},{128,491},{221,457},{288,457},{212,523},{119,456},{143,523},{255,457},{109,524}};
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
  fill(0,255,0,128);//半透明的綠色
  for(int i=0;i<26;i++){
    rect(pos[i][0],pos[i][1],28,30,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY);//定位、印出mousey座標
}
