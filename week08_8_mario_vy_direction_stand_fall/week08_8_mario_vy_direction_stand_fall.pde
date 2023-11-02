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
  fill(229,119,42); rect(200,150,20,20);//方塊
  if(hitBox(200,150,20,20)){
    if(vy>0){///站在方塊上，飛行停止，不果就卡住了，掉不下來
      marioY = 150-10;
      flying =false;
    }else{//肚臍到下邊界時，飛行沒有停止
      vy = 0;
      marioY = 150+20+10;
    }
  }
}
boolean hitBox(int x,int y,int w,int h){
  if (x-7<marioX && marioX<x+w+7 && y-10<marioY && marioY<y+h+10)return true;
  ///碰到方塊的下邊界
  return false;//否則沒有碰到
}
boolean flying =false;
void keyPressed(){
  if(keyCode==RIGHT) vx = 2;
  if(keyCode==LEFT) vx =-2;
  if(keyCode==UP && flying==false) {
    vy =-20;
    flying = true;
  }
}
void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT) vx=0;
}
