ArrayList<PVector> pt;
void setup(){
  size(400,400, P3D);
  pt = new ArrayList<PVector>();
  for(int i=0; i<20; i++){
    pt.add(new PVector(i*20,20));
  }//假設畫面中，點好了20個頂點
}
void draw(){
  background(255);
  for(PVector p: pt){//畫出20個頂點
    ellipse( p.x, p.y, 10, 10);
  }
  if(ans!=null)ellipse(ans.x, ans.y, 15, 15);//ans有東西的話，將對應的圓圈出來
}
PVector ans = null;//空指標
void mousePressed()
  for(PVector p : pt){///如果找到距離和滑鼠距離<5
    if(dist(p.x, p.y, mouseX, mouseY) < 5){
      ans = p;
    }
  }
}
