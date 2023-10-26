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
  ellipse(200,200,15,15);
  //if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
  for (int i=0;i<pt.size()-1;i++){
    PVector p=pt.get(i) , p2 = pt.get(i+1);
    line( p.x, p.y, p2.x, p2.y);//ellipse(p.x,p.y,3,3);
  }
  ellipse( ghostX, ghostY, 15, 15);//鬼
  float dx = 200-ghostX, dy = 200-ghostY, len=sqrt(dx*dx+dy*dy);
  ghostX += dx/ len/ 3;
  ghostY += dy/ len/ 3;
}
void mouseReleased(){
  for(int i=pt.size()-1;i>=0;i--){///到過來的for迴圈
    pt.remove(i);
  }
}
