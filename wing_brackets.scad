include <config.scad>;

use <wing.scad>;

module wing_brackets() {
     n = wings_nb;

     module bracket() {
          translate([0, wings_thickness/2, 0]) {
               cube([2, 10, wings_m]);

               intersection() {
                    translate([0, 0, wings_m - (wings_p + wings_n)])
                         cube([10, 2, wings_p + wings_n]);
                    wing();
               }
          }
     }

     for (i = [0:n])
          rotate([0, 0, i * 360 / n + wings_rot_offset])
               translate([ring_ext_dia/2 - 2, 0, 0]) {
               bracket();

               mirror([0, 1, 0])
                    bracket();
          }
}

wing_brackets();
