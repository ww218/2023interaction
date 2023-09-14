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
void keyPressed(){
  if(key=='1')stroke(255,0,0);//如果按下數字1 筆是紅色
  if(key=='2')stroke(0,0255,0);//如果按下數字2 筆是綠色
  if(key=='3')stroke(0,0,255);//如果按下數字3 筆是藍色
  if(key=='s'||key=='S')save("output.png");//如果按下s就會存檔
}
