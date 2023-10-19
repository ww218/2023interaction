import processing.sound.*;

SoundFile file;
void setup() {
  size(300, 300);
  background(255);
  file = new SoundFile(this, "a.mp3");
  file.play();
}    
void draw(){

}
