void setup(){
  size(700,400);
  textSize(64);
}
String line ="Input: ";
void draw(){
  text( line, 100,100);
}  
void keyPressed(){
  if(key >= 'A' && key<='Z')line+=key;//不全部印只印大小寫
  if(key >= 'a' && key<='z')line+=key;
}
