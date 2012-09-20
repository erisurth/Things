radius = 50/2;

$fs = 0.2;
$fa = 5;

module spoolholder (radius=25)
{
	difference ()
	{
		union ()
		{
			cylinder(r=radius+2, h=3);
			translate ([0,0,3]) cylinder(r=radius, h=4);
		}
		translate([0,0,-1]) 608hole();
		circleholes (3, 30, 30);
	}
}

module circleholes (number=6, diameter=6, distance=20)
{
	for(i = [0 : number])
	{
		rotate(a = (i*(360/number)), v = [0, 0, 1]) translate ([distance, 0, -1]) cylinder(r = diameter/2, h = 9);
	}

}

module 608hole (height=9)
{
	module chunk (height=9)
	{
			cylinder(r=2, h=height);	
			translate ([0, -2, 0]) cube([4, 4, height]);
	}
	cylinder(r=11, h=height);
	translate ([-13,0,0]) chunk();
	rotate (120, [0,0,1]) translate ([-13,0,0]) chunk();
	rotate (240, [0,0,1]) translate ([-13,0,0]) chunk();
}

spoolholder(radius);
