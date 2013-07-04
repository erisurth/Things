module prism(l, w, h) {
	translate([0, l, 0]) rotate( a= [90, 0, 0]) 
	linear_extrude(height = l) polygon(points = [
		[0, 0],
		[w, 0],
		[0, h]
	], paths=[[0,1,2,0]]);
}

difference() 
{
	union()
	{
		cube([30, 150, 20]);
		translate([15, 154, 0]) cylinder(r=34/2, h=20);
		translate([5, -15, 0]) cube([6,21,15]);
		translate([25-6, -15, 0]) cube([6,21,15]);
	}
      for (i = [0,1])
	{
		translate ([5, (i*70)+6, -0.5]) rotate([90, 0, 90]) prism(21,20,20);
		translate ([25, (i*70)+35, -0.5]) rotate([90, 0, -90]) prism(21,20,20);
		translate ([25, (i*70)+6+35, -0.5]) rotate([90, 0, 180]) prism(21,20,20);
		translate ([5, ((i+1)*70), -0.5]) rotate([90, 0, 0]) prism(21,20,20);
	}
	translate([15,-1,37.5]) rotate([-90,0,0]) cylinder(r=20, h=190);
	translate([0, -7.5, 7.5 ]) rotate([0, 90, 0]) cylinder(r=2.5, h=30);

	for (x = [0,1])
	{
		for (y = [0, 1])
		{
			translate([(x*16)+7, (y*16)+146, -0.1]) cylinder(r=1.6, h=40);
			translate([(x*16)+7, (y*16)+146, 10]) cylinder(r=5.5 / 2 / cos(180 / 6) + 0.05, h=20, $fn=6);
		}
	}
	
	translate([15, 154, -0.5]) cylinder(r=15/2, h=30);
}		
