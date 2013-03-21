$fn = 18;

module bandsaw_shape()
{
	difference()
	{
		union()
		{
			square([45, 25]);
		}
		square([20, 10]);
		translate([-0.01, 5]) union()
		{
			square([15,16]);
			translate([15-0.01,0]) square([8+0.02, 16-3.5]);
			translate([23,0]) square([9.2+0.01, 16]);
			translate([32.2,10-0.01]) square([7, 6.01]);
			translate([32.2,0])polygon([[0,0], [0,10], [7,10]]);
		}
		translate([37.2,0])polygon([[0,0], [14,0], [14,20]]);
	}
}

module wedge()
{
	polygon([[0,0], [0,11], [45,0]]);
}

module bandsaw_guide()
{
	difference()
	{
		union()
		{
			linear_extrude(height=50) bandsaw_shape();
			translate([45,25,0]) rotate([0,-90,0]) linear_extrude(height=45) wedge();
		}
		translate([32.2,12,10]) 
			rotate([90,0,55]) 
				union()
				{
					cylinder(r=2.7, h=30);
					rotate([0,0,30]) cylinder(r=8 / 2 / cos(180 / 6) + 0.05, , h=8, $fn=6);
				}
		translate([32.2,12,40]) 
			rotate([90,0,55]) 
				union()
				{
					cylinder(r=2.7, h=30);
					rotate([0,0,30]) cylinder(r=8 / 2 / cos(180 / 6) + 0.05, , h=8, $fn=6);
				}
	}
}

module l_channel(len=300)
{
	union()
	{
		cube([16, 3.2, len]);
		cube([3.2, 16, len]);
	}
}

translate([0,0,50]) rotate([0,180,0]) 
difference()
{
	union()
	{
		bandsaw_guide();
	}	
	translate([50,20.99,-0.01]) rotate([0,-90,0]) l_channel(60);
	translate([7.5,-0.01, 10]) rotate([-90,0,0]) cylinder(r=1, h=60);
	translate([17.5, 30, -0.01]) cylinder(r=1, h=60);
	translate([37.5, 30, -0.01]) cylinder(r=1, h=60);
}
