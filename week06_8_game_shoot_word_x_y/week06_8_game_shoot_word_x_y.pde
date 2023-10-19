void setup(){
  size(400,600);
  textSize(20);
}
String Q ="Hello",A="";
float x=100, y=100;
void draw(){
  background(0);
  text(Q, x, y);
  ellipse(200,550,20,20);//200*550位置,20*20的圓圈,表示我
  float dx=(200-x) ,dy=(550-y), d = sqrt(dx*dx+dy*dy)*2;//d=距離//*3可以調速度，可以用來分關卡
  x += dx/d;
  y += dx/d;
  if(keyPressed){
    stroke(255,0,0);
    line(200,550,x,y);
  }
}
