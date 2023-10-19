void setup(){
  size(800,400);
  textSize(64);
}
String line ="";
void draw(){
  background(0);///背景
  text("Input: "+line, 50,100);
}  
void keyPressed(){
  if(key >= 'A' && key<='Z')line+=key;//不全部印只印大小寫
  if(key >= 'a' && key<='z')line+=key;
  if(key == BACKSPACE && line.length()>0) {//當按下倒退鍵，且字串長度大於0時
    line = line.substring(0,line.length()-1);
    //substring減掉字串長度最後面的哪一個
  }
}
