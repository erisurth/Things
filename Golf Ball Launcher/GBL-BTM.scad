include <../Libraries/shapes.scad>

module lower_mount()
{
    difference()
    {
	    cylinder(r=15, h=10);
	    translate([0,0,-0.1]) cylinder(r=4, h=10.2);

	    //m5 nut traps
	    rotate([0, 0, 0]) translate([8,-4,1]) cube([3, 8, 9.1]);
	    rotate([0, 0, 120]) translate([8,-4,1]) cube([3, 8, 9.1]);
	    rotate([0, 0, 240]) translate([8,-4,1]) cube([3, 8, 9.1]);

	    //screw holes
	    rotate([0, 0, 0]) translate ([0,0,5]) rotate([0, 90, 0]) cylinder(r=2.6, h=20);
	    rotate([0, 0, 120]) translate ([0,0,5]) rotate([0, 90, 0]) cylinder(r=2.6, h=20);
	    rotate([0, 0, 240]) translate ([0,0,5]) rotate([0, 90, 0]) cylinder(r=2.6, h=20);

	    //m8 nut trap
	    translate([0,0,2.5+5.05]) rotate([0,0,30]) hexagon(13,10.1);
    }
}

if ($render_included!=false) lower_mount();
