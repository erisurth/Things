$fs = 0.1;
$fa = 5;

rotate (90, [1,0,0]) 
difference()
{
union()
{
translate ([-10,0,-12]) cube([20,7,24]);
translate ([0, 0, 12]) rotate (-90, [1,0,0]) cylinder(r=10, h=7);
translate ([0, 0, -12]) rotate (-90, [1,0,0]) cylinder(r=10, h=7);


polyhedron ( points = [
				[-5, 7, -20], 
				[5, 7, -20], 
				[-10, 7, 5], 
                        [10, 7, 5], 
				[-10, 20, 5], 
				[10, 20, 5]], 
              triangles = [
					[0,4,2], //left
					[1,3,5], //right
					[0,1,5],[5,4,0], //front
					[5,2,4],[2,5,3], //top
					[2,3,1],[2,1,0] //back
					]);
}
translate ([-10.5,18,0]) cube([21, 3, 10]);

translate ([-10.5,11,5]) rotate (90, [0,1,0]) cylinder(r=4, h=21);

translate ([0, -0.5, -12]) rotate (-90, [1,0,0]) cylinder(r=2.5, h=20);
translate ([0, 8, -12]) rotate (-90, [1,0,0]) cylinder(r=5, h=12);
translate ([0, 5.1, -12]) rotate (-90, [1,0,0]) cylinder(r1=2.5, r2=5, h=3);


translate ([0, -0.5, 12]) rotate (-90, [1,0,0]) cylinder(r=2.5, h=20);
translate ([0, 6, 12]) rotate (-90, [1,0,0]) cylinder(r=5, h=6);
translate ([0, 3.1, 12]) rotate (-90, [1,0,0]) cylinder(r1=2.5, r2=5, h=3);


}