// PoVRay 3.7 Scene File " ... .pov"
// author:  ...
// date:    ...
//--------------------------------------------------------------------------
#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
//--------------------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"
//--------------------------------------------------------------------------
// camera ------------------------------------------------------------------
#declare Camera_0 = camera {/*ultra_wide_angle*/ angle 75      // front view
                            location  <0.0 , 1.0 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_1 = camera {/*ultra_wide_angle*/ angle 50   // diagonal view
                            location  <1.0 , 1.5 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 0.0 , 0.0>}
#declare Camera_2 = camera {/*ultra_wide_angle*/ angle 90  //right side view
                            location  <3.0 , 1.0 , 0.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_3 = camera {/*ultra_wide_angle*/ angle 90        // top view
                            location  <0.0 , 3.0 ,-0.001>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
camera{Camera_1}
// sun ---------------------------------------------------------------------
light_source{< -3000, 3000, -3000> color White}
// sky ---------------------------------------------------------------------
sky_sphere { pigment { color rgb <1.0,1.0,1.0>} 
          
           } //end of skysphere
// ground ------------------------------------------------------------------
/*
plane{ <0,1,0>, 0 
       texture{ pigment{ color rgb <0.7,0.5,0.3>}
              //normal { bumps 0.75 scale 0.025}
                finish { phong 0.1}
              } // end of texture
     } // end of plane
*/
//--------------------------------------------------------------------------
//---------------------------- objects in scene ----------------------------
//--------------------------------------------------------------------------

object{ // Round_Box(A, B, WireRadius, UseMerge)
        Round_Box(<-1,-1,-1>,<1,1,1>, 0.5   , 0)  
         
        texture{ pigment{ color rgb<1,0.25,0.0> transmit 0.2 }
               //normal { radial sine_wave frequency 30 scale 0.25 }
                 finish { phong 1 }
                }
        scale<1,1,1>  rotate<0, 0,0> translate<0,0.1,0>
      } // ---------------------------------------------------------
text { ttf "arial.ttf", "?", 0.02, 0.0 // thickness, offset

       texture{ pigment{ color rgb<1,1,1>*1.3 } 
              //normal { bumps 0.5  scale 0.01 }
                finish { phong 0.1 }
              } // end of texture

       scale<1,1,1>*0.8
       translate<0,0,-1.1 >
      } // end of text object ---------------------------------------------
