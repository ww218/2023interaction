void setup(){
  size(400,400);
}
float marioX=50, marioY=250, vx=0, vy=0;///vx,vy剛開始速度=0
void draw(){
  background(108,137,255);
  marioX += vx;
  fill(255,0,0); ellipse( marioX, marioY, 15, 20);///馬力歐本人
  fill(229,119,42); rect(0,260,400,150);
}
void keyPressed(){
  if(keyCode==RIGHT) vx = 2;//按右鍵往右加速度跑
  if(keyCode==LEFT) vx =-2;//按左鍵往左加速度跑
}
