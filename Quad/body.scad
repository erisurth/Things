$fs = 1;
$fa = 1;

module prism(l, w, h) {
	translate([0, l, 0]) rotate( a= [90, 0, 0]) 
	linear_extrude(height = l) polygon(points = [
		[0, 0],
		[w, 0],
		[0, h]
	], paths=[[0,1,2,0]]);
}

module body ()
{
	difference()
	{
		translate([-60, -60, 0]) cube([120, 120, 25]);

		// things there are one of
		translate([0, 0, -1]) cylinder (r=8, h=27);
		difference()
		{
		    translate([0, 0, 10]) cylinder (r=30, h=27);
            for(r = [0, 90, 180, 270]) rotate([0, 0, r]) translate ([35/2, 35/2, -1]) cylinder(r=3, h=13);
        }

		// things there are four of
		for(r = [0, 90, 180, 270])
		{
			rotate([0, 0, r])
			{
				// holes for arm connections
				translate([-15+5, -60-1, 5]) cube([6,16,15]);
				translate([-15+19, -60-1, 5]) cube([6,16,15]);
				translate([-25, 7.5-60, 5+7.5 ]) rotate([0, 90, 0]) cylinder(r=2.5, h=50);
				translate([-25+1, 7.5-60, 5+7.5 ]) rotate([0, 90, 0]) cylinder(r=5, h=10);
				translate([15-1, 7.5-60, 5+7.5 ]) rotate([0, 90, 0]) cylinder(r=8 / 2 / cos(180 / 6) + 0.05, h=20, $fn=6);

				// holes in center
				translate([-25, 0, -1]) cylinder(r=13, h=27);

				// corner cut outs
				translate ([60, 60, -0.5]) cylinder(r=45, h=26);
				
				// bevel
			    translate([-61, -16, -1]) prism(32, 7, 7);
			    
			    // holes for pcb mount
			    translate ([35/2, 35/2, -1]) cylinder(r=5.5 / 2 / cos(180 / 6) + 0.05, h=8, $fn=6);
			    translate ([35/2, 35/2, 6.9]) cylinder(r1=5.5 / 2 / cos(180 / 6) + 0.05, r2=0, h=3, $fn=6);
			    translate ([35/2, 35/2, -1]) cylinder(r=1.6, h=40);
			}
		}
	}
}

if ($render_included!=false) body();
