void setup(){
  size(400,600);
  textSize(20);
}
void randomQ(){
  int i=int(random(QQ.length));//亂數決定改成整數，因為亂數是浮點數
  Q = QQ[i];
  x = random(0,300);
  y = random(0,100);
}
String [] QQ = {"void","setup","float","apple","cat"};
String Q ="hello",A="";
float x=100, y=100;
void draw(){
  background(0);
  fill(#FFFFFF);text(Q,x,y);//Q白色
  fill(#FF0000);text(A,x,y);//A紅色
  ellipse(200,550,20,20);//200*550位置,20*20的圓圈,表示我
  float dx=(200-x) ,dy=(550-y), d = sqrt(dx*dx+dy*dy)*2;//d=距離//*3可以調速度，可以用來分關卡
  x += dx/d;
  y += dx/d;
  if(keyPressed){
    stroke(255,0,0);
    line(200,550, x+textWidth(A), y);
  }
}
void keyPressed(){
  int i=A.length();
  if( key==Q.charAt(i) ){///打的字和字串內的字相同
    A += key;//打對了變成A紅色
    if(Q.equals(A)){
      randomQ();
      A="";
    }
  }
}
