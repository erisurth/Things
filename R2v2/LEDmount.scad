$fa = 1;
$fs = 1;

difference()
{
	translate([-0.5,0,0])
	union()
	{
		cube([8,4,9]);
	translate([4, 0, 9]) rotate([-90,0,0]) cylinder(r=4, h=4);
	}
	translate([1, 1, -0.1]) cube([5, 2, 6]);
	translate([1.5, -0.1, -0.1]) cube([4, 2.1, 5.5]);
	translate([3.5, -0.1, 9]) rotate([-90,0,0]) cylinder(r=2.6, h=8);
	translate([3.5, 3.1, 9]) rotate([-90,0,0]) cylinder(r=3.5, h=8);
	translate([1.5,3.5,-0.1])cube([1,0.6,10]);
	translate([4.5,3.5,-0.1])cube([1,0.6,10]);

}