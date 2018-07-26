include <config.scad>;

use <wing.scad>;

module wings() {
     n = wings_nb;

     for (i = [0:n]) {
          rotate([0, 0, i * 360 / n + 21]) {
               translate([ring_ext_dia/2 - 2, 0, 0]) {
                    translate([0, -wings_thickness/2 - 0.001, -0.001]) {
                         wing();
                    }
               }
          }
     }
}

wings();
