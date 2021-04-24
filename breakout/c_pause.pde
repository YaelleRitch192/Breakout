void pause(){
    textFont(font);
    frogs.pause();
      fill(255,255,255);
  if(dist(width/2,100,mouseX,mouseY)<35.5){stroke(green);}else{stroke(blue);}
circle(width/2,100,75);
textSize(100);
text("pause", width/2,height/2-150);
fill(green);
stroke(green);
triangle(485,85,515,100,485,115);

//restart button
strokeWeight(4);
  if (mouseX>300 && mouseX<700 && mouseY>500 && mouseY<600){ stroke(green); }else { stroke(blue);}
fill(orange);
rect(300,500,400,100);
fill(pink);
textSize(60);
text("main menu", 500, 550);
}

void pauseclicks(){
      if(dist(width/2,100,mouseX,mouseY)<35.5){
    mode=game;
  }
   if (mouseX>300 && mouseX<700 && mouseY>500 && mouseY<600){
   mode=intro;
   }
}
