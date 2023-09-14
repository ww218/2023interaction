///互動模式Interactive Mode
//大一,二學int main(){...}
void setup(){//設定
  size(500,500);
  background(255,255,0);
}
void draw(){//畫圖每秒畫60次
 ellipse(mouseX,mouseY,8,8);
}
