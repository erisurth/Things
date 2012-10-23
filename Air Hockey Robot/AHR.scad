cylinder(r=80/2, h=30);
translate([0,0,60])
{
	rotate(90, [0,1,0]) cylinder(r=58/2, h=40);
	rotate(120, [0,0,1]) rotate(90, [0,1,0]) cylinder(r=58/2, h=40);
	rotate(240, [0,0,1]) rotate(90, [0,1,0]) cylinder(r=58/2, h=40);
}