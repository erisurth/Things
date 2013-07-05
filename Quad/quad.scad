$render_included = false;

include <arm.scad>;
include <body.scad>;

color([0.5, 0, 0]) body();
for (r = [0, 90, 180, 270])
rotate([0, 0, r]) translate([0, 45, 5]) arm(true);
