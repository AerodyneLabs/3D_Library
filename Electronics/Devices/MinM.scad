//MinM Module
//Matthew Nelson
//Aerodyne Labs - 2013

//Uses the pin_headers module by Paul McGovern under the  Creative Commons - Attribution - Share Alike

use <pin_headers.scad>
//Generate the pin header
translate ([5.5,1.5,-2.56]) rotate ([0,0,90]) pin_header( 10,4,1,4 );

//Generate PCB Board
difference(){
color([1,1,1]) cube([11.43,12.446,.787]);

//Generate holes in PCB
for (i= [0:3])
{
translate ([1.7+(i*2.54),1.5,0]) cylinder(h=1.1,r=.8,$fn=30);
}

translate ([1.7+(0*2.54),11.3,0]) cylinder(h=1.1,r=.8,$fn=30);
translate ([1.7+(3*2.54),11.3,0]) cylinder(h=1.1,r=.8,$fn=30);
}

//Generate RGB LED
difference() {
translate ([2.3,3.5,.8]) color([.9,.9,.9]) cube([6.5,6,1.524]);

  	translate ([5.5,6.6,1.9]) color([1,0,0]) # cylinder(h=.5,r=1.8,$fn=30); 
  
}
