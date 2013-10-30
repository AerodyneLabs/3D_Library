//BlinkM Module
//Matthew Nelson
//Aerodyne Labs - 2013

//Uses the pin_headers module by Paul McGovern under the  Creative Commons - Attribution - Share Alike

use <pin_headers.scad>
//Generate the pin header
translate ([7.5,1.5,-2.56]) rotate ([0,0,90]) pin_header( 10,4,1,6 );

//Generate PCB Board
difference(){
color([1,1,1]) cube([15.24,15.748,.787]);

//Generate holes in PCB
for (i= [0:5])
{
translate ([1.15+(i*2.54),1.5,0]) cylinder(h=1.1,r=.8,$fn=30);
}

translate ([1.15+(5*2.54),14,0]) cylinder(h=1.1,r=.8,$fn=30);
translate ([1.15+(5*2.54),11,0]) cylinder(h=1.1,r=.8,$fn=30);
}

//Generate RGB LED
translate ([4,5.5,2]) color([.9,.9,.9]) cube([7,7,.787]);
difference() {
  	translate ([7.5,9,2.9]) color([1,0,0]) # sphere(r=2, $fn=100); 
  
	translate(v=[7.5,9,.75]) {

    # cube(size = 4.1, center = true);
   }
}
translate ([4,5.5,.787]) cube(size = [.7,.7,1.3]);
translate ([4+6.3,5.5,.787]) cube(size = [.7,.7,1.3]);
translate ([4,5.5+6.3,.787]) cube(size = [.7,.7,1.3]);
translate ([4+6.3,5.5+6.3,.787]) cube(size = [.7,.7,1.3]);