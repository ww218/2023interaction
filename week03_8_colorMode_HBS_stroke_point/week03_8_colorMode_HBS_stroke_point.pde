size(400,400);
colorMode(HSB,400);
for(int i=0; i<400; i++){///
  for(int j=0; j<400; j++){///J飽和度
    stroke(i,400,400);//顏色，最後是亮度
    point(i,j);
  }
}
