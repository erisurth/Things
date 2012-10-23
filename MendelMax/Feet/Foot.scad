
module foot (height=20, diameter_top=20, hole_diameter=5)
{
	diameter_btm = diameter_top + 5;
	difference ()
	{
		cylinder (h=height, r1=diameter_top/2, r2=diameter_btm/2);
		translate([0,0,-0.5]) cylinder (h=height+3, r=hole_diameter/2);
		translate([0,0,2]) cylinder (h=height-1, r1=5, r2=(10+diameter_btm-diameter_top)/2);
	}
}

foot(height=6, diameter_top=20);
