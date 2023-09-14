///互動模式Interactive Mode
//小畫家
void setup(){//設定
  size(500,500);
  background(255);///白色背景
}
void draw(){//畫圖 每秒畫60次
 if(mousePressed){//如果mouse有按下去
   line(mouseX,mouseY,pmouseX,pmouseY);
 }//畫線(滑鼠座標mouseX,mouseY),到之前滑鼠座標pmouseX,pmouseY
}
