void setup(){
  size(400,400);
}
float marioX=50, marioY=250, vx=0, vy=0;///vx,vy剛開始速度=0
void draw(){
  background(108,137,255);
  marioX += vx;
  if(flying){//如果在飛行
    marioY += vy;///Y方向位置會改變
    vy += 0.98;////重力加速度
    if(marioY >= 250){//碰到地板
      marioY = 250;//站在地上
      flying = false;///不再飛行
    }
  }
  fill(255,0,0); ellipse( marioX, marioY, 15, 20);///馬力歐本人
  fill(229,119,42); rect(0,260,400,150);
}
boolean flying =false;///一開始沒在飛
void keyPressed(){
  if(keyCode==RIGHT) vx = 2;//按右鍵往右加速度跑
  if(keyCode==LEFT) vx =-2;//按左鍵往左加速度跑
  if(keyCode==UP && flying==false) {
    vy =-20;
    flying = true;///開始飛行
  }
}
void keyReleased(){//放開時停止移動
  if(keyCode==LEFT || keyCode==RIGHT) vx=0;
}
