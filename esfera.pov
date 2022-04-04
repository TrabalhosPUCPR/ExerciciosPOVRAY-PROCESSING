#include "colors.inc"

#declare raio = 2 ;
#declare XPosition = 0 ; 
#declare YPosition = raio ;
#declare ZPosition = 1 ;   
#declare Raio = 50;  
#declare N_Esferas = 65  ;  

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
    location <70, 100, -200> 
    look_at <0, 30, 0>
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

#declare N_Esferas = 55  ;
#declare Raio = 50;  
#declare YCount =0;
#declare BallCount = 0; 
#declare giro = 0;

#while (giro < 200)

 #while (BallCount < 6.2830) 
    #declare XPosition = Raio*sin(BallCount) ;
    #declare ZPosition = Raio*cos(BallCount) ;      
    #declare giro = giro + 0.1;
    #declare WhiteBall = sphere { < XPosition, YPosition, ZPosition > raio pigment {White} };
    #declare BallCount = BallCount + 2*pi/N_Esferas  ;      
    object {WhiteBall rotate<0, 0, giro>}
 #end

 #declare BallCount = 0;  
 
 #end 