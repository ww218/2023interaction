void setup(){
  size(400,400,P3D);//P3D:Processing3D立體功能
}
void draw(){
  background(#FFFFF2);//備景色
  pushMatrix();//備份矩陣
    translate(mouseX,mouseY);///移動
    rotateY(radians(mouseX));//rotate對X軸轉//rotateY對Y軸轉
    fill(0,255,0);//面填成綠色
    box(100);//畫一個3D box
    
    noFill();//沒有填充，變成空的方塊
    scale(2);//放大兩倍
    box(100);
  popMatrix();///還原矩陣 
}  
