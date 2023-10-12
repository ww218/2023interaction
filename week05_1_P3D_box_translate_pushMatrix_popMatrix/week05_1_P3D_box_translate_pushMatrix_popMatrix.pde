void setup(){
  size(400,400,P3D);//P3D:Processing3D立體功能
}
void draw(){
  background(#FFFFF2);//備景色
  
  pushMatrix();///備份矩陣
    translate(mouseX,mouseY);///移動
    box(100);//畫一個3D box
  popMatrix();///還原矩陣 
}  
