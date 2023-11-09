PImage img;
void setup(){
  size(800,600);
  img =loadImage("keyboard.png");///讀進圖片
}
void draw(){
  image(img, 0, 600-266);//Y往下移動266是圖片的高度
}
