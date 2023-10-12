ArrayList<PVector> pt;
void setup(){
  size(400,400, P3D);
  pt = new ArrayList<PVector>();
  for(int i=0; i<37; i++){
    pt.add(new PVector(random(400),random(400)));
  }//假設畫面中，點好了37個頂點
}
void draw(){
  background(255);
  for(PVector p: pt){//畫出37個頂點
    ellipse( p.x, p.y, 10, 10);
  }
  if(ans!=null)ellipse(ans.x, ans.y, 15, 15);//ans有東西的話，將對應的圓圈出來
}
PVector ans = null;//空指標
void mouseDragged(){///滑鼠拖曳時
  if(mouseButton==CENTER && ans!=null){///按中鍵拖曳
    ans.x =mouseX;
    ans.y =mouseY; 
  }
}
void mousePressed(){
  if(mouseButton==LEFT)pt.add(new PVector(mouseX,mouseY));
  else if(mouseButton==CENTER){
    for(PVector p : pt){///如果找到距離和滑鼠距離<5
      if(dist(p.x, p.y, mouseX, mouseY) < 5){
        ans = p;
      }
    }
  }else if (mouseButton==RIGHT){//右鍵刪除//要用傳統的迴圈
    for(int i=0; i<pt.size(); i++){
      PVector p = pt.get(i);//要寫兩行，才等於厲害的1行
      if(dist(p.x,p.y,mouseX,mouseY)<5){//找到夠近的點
        pt.remove(i);///就把第i個點刪掉(刪掉的時候會把大資料結構右邊的都左移一個)
      }
    }
  }
}
