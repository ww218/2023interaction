ArrayList<PVector> pt = new ArrayList<PVector>();///資料結構
void setup(){
  size(400,400);
  background(255);
}
float ghostX=40, ghostY=20;
void mouseDragged(){//按下滑鼠拖曳
  pt.add(new PVector(mouseX,mouseY));
}
void draw(){
  background(255);
  strokeWeight(1);
  stroke(0);ellipse(200,200,15,15);
  stroke(0);ellipse(ghostX,ghostY,15,15);
  
  strokeWeight(4);//變粗
  float dpx=0, dpy=0;///要看p.x p2.x的差距, p.y p2.y的差距
  float rightdown = 0;///往右下
  for (int i=0; i<pt.size()-1; i++){///累積移動量
    PVector p=pt.get(i) , p2 = pt.get(i+1);
    dpx += abs(p2.x - p.x);//累積x的移動量
    dpy += abs(p2.y - p.y);//累積y的移動量
    if(p2.x - p.x>0 && p2.y-p.y>0) rightdown+=sqrt(dpx*dpx+dpy*dpy);
  }
  if( dpx>100 &&  dpy<40) stroke(255,0,0);///超過了長度100type1紅色的橫線
  else if( dpx<40 && dpy>100) stroke(0,0,255);///畫直線超過100變藍色
  else if(rightdown>150) stroke(0,255,0);///右下變綠色
  else stroke(0);//不是就黑色 
  for (int i=0; i<pt.size()-1; i++){///畫線
    PVector p=pt.get(i) , p2 = pt.get(i+1);
    line( p.x, p.y, p2.x, p2.y);
  }
  
  float dx = 200-ghostX, dy = 200-ghostY, len=sqrt(dx*dx+dy*dy);
  ghostX += dx/ len/ 3;
  ghostY += dy/ len/ 3;
}
void mouseReleased(){
  for(int i=pt.size()-1;i>=0;i--){///到過來的for迴圈
    pt.remove(i);
  }
}
