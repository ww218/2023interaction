void setup(){
  size(400,400,P3D);
}
void draw(){///一秒鐘畫60次
  background(255);
  if(mousePressed && mouseButton ==LEFT)background(255,0,0);//左鍵紅色
  if(mousePressed && mouseButton ==CENTER)background(0,255,0);//中鍵綠色
  if(mousePressed && mouseButton ==RIGHT)background(0,0,255);//右鍵藍色
}
void mousePressed(){///滑鼠按下去才做
  if(mouseButton ==LEFT)println("LEFT");
  if(mouseButton ==CENTER)println("CENTER");
  if(mouseButton ==RIGHT)println("RIGHT");
}
