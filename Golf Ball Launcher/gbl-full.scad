$render_included=false;
$fs=1;

include <GBL.scad>;
include <GBL-BTM.scad>;
include <GBL-CUP.scad>;

module spring (length=30)
{
    union()
    {
        translate([0,0,6]) cylinder(r=4, h=length-5);
        translate([-3,0,length])
        rotate([0,-90,0])
        translate([3.5,0,0])
        difference()
        {
            cylinder(r=3.5, h=1);
            translate([0,0,-0.05]) cylinder(r=2.5, h=1.1);
        }
        translate([-3,0,0])
        rotate([0,-90,0])
        translate([3.5,0,0])
        difference()
        {
            cylinder(r=3.5, h=1);
            translate([0,0,-0.05]) cylinder(r=2.5, h=1.1);
        }
    }
}

translate([0,0,10]) rotate([180,0,0]) lower_mount();
translate([0,0,100]) upper_mount();
translate([0,0,172]) cup();

color("lightgrey") translate([0,0,-5]) cylinder(r=4, h=200);
color("lightgrey") rotate([0,0,30]) translate([0,0,-1+4]) hexagon(12.8, 8);
color("lightgrey") rotate([0,0,30]) translate([0,0,10+4]) hexagon(12.8, 8);
color("lightgrey") rotate([0,0,30]) translate([0,0,165+4]) hexagon(12.8, 8);
color("lightgrey") rotate([0,0,30]) translate([0,0,185+4]) hexagon(12.8, 8);

color("grey") rotate([0,0,0]) rotate([0,3,0]) translate([20,0,1.5]) spring(100);
color("grey") rotate([0,0,120]) rotate([0,3,0]) translate([20,0,1.5]) spring(100);
color("grey") rotate([0,0,240]) rotate([0,3,0]) translate([20,0,1.5]) spring(100);
