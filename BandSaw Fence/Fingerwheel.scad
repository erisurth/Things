$fn = 18;

module FingerWheel (nut_size=9, hole_dia=6)
{
	difference()
	{
		union()
		{
			translate([0,0,1.5]) cylinder(r=hole_dia*2, h=4.5);
			translate([0,0,5.99]) cylinder(r1=hole_dia*2, r2=hole_dia*0.8, h=2);
			cylinder(r1=hole_dia*1.5, r2=hole_dia*2, h=1.5);
		}
		translate([0,0,1.5])cylinder(r=nut_size / 2 / cos(180 / 6) + 0.05, h=8, $fn=6);
		translate([0,0,-0.01])cylinder(r=hole_dia/2, h=20);
		for(z = [0 : 6])
		{
			rotate(a=60*z, v=[0,0,1]) translate([hole_dia*2.2,0,-3])cylinder(r=hole_dia / 1.6 / cos(180 / 6) + 0.05, h=20);
		}
	}
}

FingerWheel();
