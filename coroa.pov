#include "colors.inc"

#declare raio = 2 ;
#declare XPosition = 0 ; 
#declare YPosition = raio ;
#declare ZPosition = 1 ;   
#declare Raio = 50;  
#declare N_Esferas = 10  ;

#declare WhiteBall = sphere { 
    < XPosition, YPosition, ZPosition >, raio 
    pigment {
        White
    } 
    finish{
        ambient 0.5 
        phong 1
    }
}

camera { 
    location <0, 200, -200> 
    look_at <0, -30, 90>
} 

light_source {
    <50, 200, -80> 
    White
} 

plane {
    <0,1,0>, -50
    pigment {
        White
    }
    finish{ 
        reflection 1.0 
        ambient 0.2 
        diffuse 0.1 
    }
}  

#declare N_Esferas = 38  ;
#declare Raio = 50;  
#declare YCount = 0;
#declare BallCount = 0;

#while (YCount < 30)

 #while (BallCount < 6.2830)  
    #declare XPosition = Raio*sin(BallCount);
    #declare ZPosition = Raio*cos(BallCount) ;
    #declare WhiteBall = sphere { < XPosition, YPosition, ZPosition - YCount*1.4> raio pigment {White}};  
    #declare BallCount = BallCount + 2*pi/N_Esferas  ;      
    object {WhiteBall}
 #end

 #declare YCount = YCount + 1;
 #declare BallCount = 0; 
 #declare N_Esferas = N_Esferas - 1; 
 #declare YPosition = YPosition + 3;
#end