
module standoff (height=20, diameter=20, hole_diameter=5, slot_width=5.5, slot_depth=2)
{
	difference ()
	{
		intersection()
		{
			cylinder (h=height+slot_depth, r=diameter/2);
			union()
			{
				translate ([-(diameter+2)/2, -(slot_width/2), height]) cube([diameter+2, slot_width, slot_depth]);
				cylinder (h=height, r=diameter/2);
			}
		}
		translate([0,0,-0.5]) cylinder (h=height+3, r=hole_diameter/2);
	}
}

standoff(height=20);
