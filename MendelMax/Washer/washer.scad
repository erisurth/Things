
module washer (height=2, diameter=8, hole_diameter=5)
{
	difference ()
	{
		cylinder (h=height, r=diameter/2);
		translate([0,0,-0.5]) cylinder (h=height+1, r=hole_diameter/2);

	}
}

washer(height=2, diameter=15);
