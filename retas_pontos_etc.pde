float [][] reta;
float [][] ponto;
float [][] circulo;
int nretas = 20;
int npontos = 30;
int ncirculos = 10;
float Xmin, Xmax, Ymin, Ymax;
float Vxmin, Vymin, Vxmax, Vymax, Wxmin, Wymin, Wxmax, Wymax;


void inicializaretas(){
  for(int i = 0; i < nretas; i++){
    reta[i][0] = random(0, 5000);
    reta[i][1] = random(0, 5000);
    reta[i][2] = random(0, 5000);
    reta[i][3] = random(0, 5000);
  }
}

void inicializapontos(){
  for(int i = 0; i < npontos; i++){
    ponto[i][0] = random(0, 5000);
    ponto[i][1] = random(0, 5000);   
  }
}

void inicializacirculos(){
  for(int i = 0; i < ncirculos; i++){
    circulo[i][0] = random(0, 5000);
    circulo[i][1] = random(0, 5000);
    circulo[i][2] = random(30, 60); //tamanho
  }
}

void desenharetas(){
  for(int i = 0; i<nretas;i++){
    color cor = color(random(0, 255), random(0, 255), random(0, 255));
    stroke(cor);
    line(xs(reta[i][0]), ys(reta[i][1]), xs(reta[i][2]), ys(reta[i][3]));
    text("Reta "+i, xs(reta[i][0])+5, ys(reta[i][1]));
  }
}

void desenhacirculos(){
  for(int i = 0; i < ncirculos; i++){
    color cor = color(random(0, 255), random(0, 255), random(0, 255));
    stroke(cor);
    fill(cor);
    ellipse(xs(circulo[i][0]), ys(circulo[i][1]), circulo[i][2], circulo[i][2]);
    text("Circulo "+(i+1), xs(circulo[i][0])+circulo[i][2] + 5, ys(circulo[i][1] + 10));
  }
}

void desenhapontos(){
  for(int i = 0; i < npontos; i++){
    color cor = color(random(0, 255), random(0, 255), random(0, 255));
    stroke(cor);
    fill(cor);
    ellipse(xs(ponto[i][0]), ys(ponto[i][1]), random(3, 6), random(3, 6));
    text("Ponto "+(i+1), xs(ponto[i][0])+5, ys(ponto[i][1] + 10));
  }
}

float xs(float x){
  float x2 = ((Vxmax-Vxmin)/(Wxmax-Wxmin))*(x-Wxmin)+Vxmin;
  return x2;

}

float ys(float y){
  float y2 = ((Vymax-Vymin)/(Wymax-Wymin))*(y-Wymin)+Vymin;
  return y2;
}

void setup(){
   size(1000,1000);
   background(0, 0, 0);
   
   reta = new float[nretas][4];
   ponto = new float[npontos][2];
   circulo = new float[ncirculos][3];
   
   Wxmin = 0;
   Wxmax = 5000;
   Wymin = 0;
   Wymax = 5000;
   
   Vxmin = 200;
   Vxmax = width-200;
   Vymin = 200;
   Vymax = height-200;
   
   inicializapontos();
   inicializaretas();
   inicializacirculos();
   desenhacirculos();
   desenhapontos();
   desenharetas();
}

void draw(){}
