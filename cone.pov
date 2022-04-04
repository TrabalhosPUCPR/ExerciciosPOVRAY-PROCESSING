#include "colors.inc" 

camera { 
    location <0, 200, -200> 
    look_at <0, 60, 70>
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
                          
#declare height = 0;
#declare raioC = 30;
#declare raioB = 1;
#declare heightC = raioB*2;
#declare posC = 0;
#declare raioC2 = 0.5;
#declare raioB2 = 1;

#while (raioC != 0) 
                        
    #while (360 > posC)    
    
        #declare calc = posC * (180/pi);
        #declare posx = raioC * cos(calc);
        #declare posz = raioC * sin(calc);
        #declare WhiteBall = sphere { < posx, height, posz > raioB pigment {White}};
        object{WhiteBall}
        #declare posC = posC + raioB2;
    #end
    
    #declare posC = 0;
    #declare raioC = raioC - raioC2;
    #declare height = height + heightC + 1;
#end
        