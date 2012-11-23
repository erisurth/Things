include <../Libraries/shapes.scad>

module cup()
{
    difference()
    {
        cylinder(r1=20, r2=60, h=70);
        translate([0,0,20])cylinder(r1=20, r2=60, h=60);
	    translate([0,0,12+5]) rotate([0,0,30]) hexagon(13,10.1);
	    translate([0,0,-0.1]) cylinder(r=4, h=20.2);
    }
}

if ($render_included!=false) cup();
