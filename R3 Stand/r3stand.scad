module r3stand ()
{
	difference()
	{
		hull()
		{
			translate([(-92/2)+25,(-73/2)+25]) circle(r=25);
			translate([(92/2)-25,(-73/2)+25]) circle(r=25);
			translate([(-92/2)+25,(73/2)-25]) circle(r=25);
			translate([(92/2)-25,(73/2)-25]) circle(r=25);
		}
		square([52,10], center=true);	
		translate([0, 22]) square([41,30], center=true);
		translate([0, -22]) square([41,30], center=true);
		translate([46-5.1+1.5, 0]) circle(r=1.6);
		translate([-46+5.1-1.5, 0]) circle(r=1.6);
	}
}

r3stand();