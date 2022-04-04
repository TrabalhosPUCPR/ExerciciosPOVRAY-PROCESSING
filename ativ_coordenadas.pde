void setup(){
  size(700, 700);
  background(0, 0, 0);
  
}



float Xmin, Xmax, Ymin, Ymax;
float Vxmin, Vymin, Vxmax, Vymax, Wxmin, Wymin, Wxmax, Wymax;
float x, y;
color bg;

color invertcolor(color col){
  color invert = color(255-red(col), 255-green(col), 255-blue(col));
  return invert;
}

float xx(float x){
  float x2 = ((Vxmax-Vxmin)/(Wxmax-Wxmin))*(x-Wxmin)+Vxmin;
  return x2;

}

float yy(float y){
  float y2 = ((Vymax-Vymin)/(Wymax-Wymin))*(y-Wymin)+Vymin;
  return y2;

}

void texto(int vp, float x, float y, color cor){
  String str = "VP " + vp;
  fill(invertcolor(cor));
  textSize(20);
  text(str, x, y);
}

void draw(){
  
  // ----------------------- VIEWPORT 1 -----------------------
  
  Vxmin = 0;
  Vxmax = width/2;
  Vymin = 0;
  Vymax = height/2;
  
  bg = color(255, 255, 255); 
  fill(bg);
  stroke(0);
  rect(Vxmin, Vymin, Vxmax, Vymax);
  texto(1, Vxmin + 5, Vymax - 5, bg); 
  Wxmin = 0;
  Wymin = -2;
  Wxmax = 10;
  Wymax = +2;


  for(x = Wxmin; x<=Wxmax; x=x+0.1){
    y = sin(x);
    fill(bg);
    strokeWeight(3);
    stroke(invertcolor(bg));
    ellipse(xx(x), yy(y), 5, 5);
  }

  
  
  // ----------------------- VIEWPORT 2 -----------------------
  
  Vxmin = 0;
  Vxmax = width/2;
  Vymin = height/2;
  Vymax = height;
  
  bg = color(125,255,0);
  fill(bg);
  stroke(0);
  rect(Vxmin, Vymin, Vxmax, Vymax);
  texto(2, Vxmin + 5, Vymax - 5, bg); 
  Wxmin = -30;
  Wymin = -7;
  Wxmax = 31;
  Wymax = 1000;
  
  for(x = Wxmin; x<=Wxmax; x++){
    y = pow(x, 2);
    fill(bg);
    strokeWeight(3);
    stroke(invertcolor(bg));
    ellipse(xx(x), yy(y), 5, 5);
  }
  
    
  // ----------------------- VIEWPORT 3 -----------------------
  
  Vxmin = width/2;
  Vxmax = width;
  Vymin = 0;
  Vymax = height/2;
  
  bg = color(150, 150, 15);
  fill(bg);
  stroke(0);
  rect(Vxmin, Vymin, Vxmax, Vymax);
  texto(3, Vxmin + 5, Vymax - 5, bg);   
  
  stroke(invertcolor(bg));
  
  //CHAO
  line(Vxmin, Vymax - 30, Vxmax, Vymax - 30);
  
  // FORMATO DA CASA
    line(Vxmin + 30, Vymax - 30, 30 + (Vxmax/2), (Vymax/2) - 30);
    line(Vxmin + 30, (Vymax/2) - 30, (Vxmax/2) + 300, (Vymax/2) - 30);
    line((Vxmax/2) + 300, Vymax - 30, (Vxmax/2) + 300, (Vymax/2) - 30);
    line(Vxmin + 30, Vymax - 30, (Vxmax/2) + 300, Vymax - 30);
    //TELHADO
    line(30 + (Vxmax/2), (Vymax/2) - 30, ((Vxmax/2) + (310/2)), Vymin + 30);
    line(((Vxmax/2) + (310/2)), Vymin + 30, (Vxmax/2) + 300, (Vymax/2) - 30);
  //PORTA
  line(Vxmin + 60, Vymax - 30, Vxmin + 60, (Vymax/2) +60);
  line(Vxmin + 60, (Vymax/2) +60, Vxmin + 150, (Vymax/2) +60);
  line(Vxmin + 150, (Vymax/2) +60, Vxmin + 150, Vymax - 30);
  ellipse(Vxmin + 130, Vymax - 80, 5, 5);
  
  
  // ----------------------- VIEWPORT 4 -----------------------
  
  Vxmin = width/2;
  Vxmax = width;
  Vymin = height/2;
  Vymax = height;
  
  bg = color(10,145,190);
  fill(bg);
  stroke(0);
  rect(Vxmin, Vymin, Vxmax, Vymax);
  texto(4, Vxmin + 5, Vymax - 5, bg);  
  
  strokeWeight(1);
  fill(255,255,255);
  ellipse(Vxmax/2 + (Vxmax/4), Vymax/2 + (Vymax/4), 10, 10);
  
  fill(invertcolor(bg));
  textSize(60);
  text("Bom dia", Vxmax - 300, Vymax - 100);
  
  
}
