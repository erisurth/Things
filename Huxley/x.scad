$fs = 0.5;

use <xmount.scad>;

translate([0,0,9]) rotate([0,180,0])
{
	%translate([15, 0, 0]) rotate([90,0,0]) cylinder(r=3, h=120, center=true);
	%translate([-15, 0, 0]) rotate([90,0,0]) cylinder(r=3, h=120, center=true);
	%translate([36, 0, 0])  cube([2.5, 120, 5], center=true);
	#translate([0,0,11.5]) xc();

	difference()
	{
		// plate
		union()
		{
			translate([0,0,9/2])cube([60, 30, 9], center=true);
			translate([32.5,0,1.5])cube([7, 30, 15], center=true);		
		}

		// lm6uus
		translate([15, 0, 0]) rotate([90,0,0]) cylinder(r=6, h=20, center=true);
		translate([-15, 0, 0]) rotate([90,0,0]) cylinder(r=6, h=20, center=true);

		// lm6uus
		translate([15, 0, 0]) rotate([90,0,0]) cylinder(r=4, h=40, center=true);
		translate([-15, 0, 0]) rotate([90,0,0]) cylinder(r=4, h=40, center=true);

		// jhead
		cylinder(r=12.5/2, h=30, center=true);
		translate([0,10,0])cube([12.5, 20, 30], center=true);
		translate([0,0,4.25+15]) cylinder(r=16/2, h=30, center=true);
		translate([0,10,4.25+15])cube([16, 20, 30], center=true);
		translate([0,15,0])cube([16, 20, 30], center=true);
	
		// cable tie
		translate([23, 7.5, 0]) cube([2, 4, 20], center=true);
		translate([15, 7.5, 8]) cube([16, 4, 2], center=true);

		translate([23, -7.5, 0]) cube([2, 4, 20], center=true);
		translate([7, -7.5, 0]) cube([2, 4, 20], center=true);
		translate([15, -7.5, 8]) cube([16, 4, 2], center=true);

		translate([-23, 7.5, 0]) cube([2, 4, 20], center=true);
		translate([-15, 7.5, 8]) cube([16, 4, 2], center=true);

		translate([-23, -7.5, 0]) cube([2, 4, 20], center=true);
		translate([-7, -7.5, 0]) cube([2, 4, 20], center=true);
		translate([-15, -7.5, 8]) cube([16, 4, 2], center=true);

		// mounts
		translate([-25,0,0]) cylinder(r=4/2, h=30, center=true);
		translate([25,0,0]) cylinder(r=4/2, h=30, center=true);
		translate([-25,0,0]) rotate([0,0,30]) cylinder(r=7 / 2 / cos(180 / 6) + 0.05, h=5, $fn=6, center=true);
		translate([25,0,0]) rotate([0,0,30]) cylinder(r=7 / 2 / cos(180 / 6) + 0.05, h=5, $fn=6, center=true);

		// belt
		translate([36, 0, 0])  cube([3, 70, 5.5], center=true);	

		// diagonals
		translate([40, 0, 9]) rotate([0, 45, 0]) cube([10, 70, 10], center=true);
		translate([28, 0, -8]) rotate([0, 45, 0]) cube([10, 70, 10], center=true);

		// another cable tie
		translate([20+23, -7.5, 0]) cube([2, 4, 20], center=true);
		translate([20+7, -7.5, 0]) cube([2, 4, 20], center=true);
		translate([20+15, -7.5, 8]) cube([16, 4, 2], center=true);

		translate([20+23, 7.5, 0]) cube([2, 4, 20], center=true);
		translate([20+7, 7.5, 0]) cube([2, 4, 20], center=true);
		translate([20+15, 7.5, 8]) cube([16, 4, 2], center=true);
	}
		//supports
		*translate ([0,0,6.5]) cylinder(r=12.6/2, h=5, center=true); 
		*translate ([0,12.6/4,6.5]) cube([12.6, 12.6/2, 5], center=true);

}

