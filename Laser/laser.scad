$fn=60;

rotate([180,0,0]) difference()
{
	union()
	{
		cylinder(r=36/2, h=15);
		translate([0,0,15]) cylinder(r1=36/2, r2=17/2, h=45);
		translate([-20,0,30]) 
			rotate([0,45,0]) 
			{
				translate([0,0,-10])cylinder(r=4.5/2, h=45);
				cylinder(r=8/2, h=30);
				translate([0,-8/2,0]) cube([20,8,25]);
			}
	}
	union()
	{
		translate([0,0,-0.1])cylinder(r=25/2, h=15.1);
		translate([0,0,15-0.1]) cylinder(r1=25/2, r2=0, h=59.2);
		translate([-20,0,30]) rotate([0,45,0]) translate([0,0,-10.1]) cylinder(r=2.5/2, h=40);
		for (a = [90,210,330]) rotate([0,0,a]) translate([0,0,6]) rotate([90,0,0])cylinder(r=3/2, h=30);
		*for (a = [30,150,270]) rotate([0,0,a]) translate([0,28,0]) rotate([10,0,0])cylinder(r=20/2, h=80);
	}
}
