module xc()
{
	difference()
	{
		union()
		{
			translate([0,0,-1])
			{
			    cube([60, 10, 3], center=true);
			    cube([50, 20, 3], center=true);
			    for (x = [-25, 25])
				    for (y = [-5, 5])
					    translate([x, y, 0]) cylinder(r=5, h=3, center=true);
			}
					
			cube([40, 10, 5], center=true);
			cube([30, 20, 5], center=true);
			for (x = [-15, 15])
				for (y = [-5, 5])
					translate([x, y, 0]) cylinder(r=5, h=5, center=true);
		}
	
		translate([25,0,0]) cylinder(r=2, h=5.5, center=true);
		translate([-25,0,0]) cylinder(r=2, h=5.5, center=true);
	
		cylinder(r=4.25, h=6, center=true);
	}
}

xc();
