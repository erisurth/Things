module upper_mount()
{
	intersection()
	{
		cylinder(r=60, h=60);
		difference()
		{
			union()
			{
				cylinder(r=20, h=35);
				rotate([0,0,60]) translate([0,-10,0]) cube([100,20,20]);
				rotate([0,0,180]) translate([0,-10,0]) cube([100,20,20]);
				rotate([0,0,300]) translate([0,-10,0]) cube([100,20,20]);
			}
			translate([0,0,5]) cylinder(r=10, h=30.1);
			translate([0,0,-0.1]) cylinder(r=5, h=5.2);
	
		//m5 nut traps
		rotate([0, 0, 0]) translate([12,-4,-0.1]) cube([3, 8, 9.1]);
		rotate([0, 0, 120]) translate([12,-4,-0.1]) cube([3, 8, 9.1]);
		rotate([0, 0, 240]) translate([12,-4,-0.1]) cube([3, 8, 9.1]);
	
		//screw holes
		rotate([0, 0, 0]) translate ([0,0,5]) rotate([0, 90, 0]) cylinder(r=2.6, h=20);
		rotate([0, 0, 120]) translate ([0,0,5]) rotate([0, 90, 0]) cylinder(r=2.6, h=20);
		rotate([0, 0, 240]) translate ([0,0,5]) rotate([0, 90, 0]) cylinder(r=2.6, h=20);
		}
	}
}

if ($render_included!=false) upper_mount();
