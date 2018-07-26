include <config.scad>;

use <bars.scad>;

module ring_rack() {
     difference() {
          translate([0, 0, 380])
               cylinder(r=ring_ext_dia/2, h=16);

          union() {
               bars(margin=0.5);
          }
     }

     translate([-31, -31, 380 + 16])
          cube([62, 62, 200]);

     difference() {
          translate([0, 0, 380 + 16 + 200])
               cylinder(r=ring_ext_dia/2, h=16);

          union() {
               bars(margin=0.5);
          }
     }
}

ring_rack();
