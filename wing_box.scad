include <config.scad>;

module wing_box() {
     n = wings_nb;

     for (i = [0:n]) {
          rotate([0, 0, i * 360 / n + wings_rot_offset]) {
               translate([ring_ext_dia/2 - 2, 0, 0]) {
                    translate([0, -wings_thickness/2 - 10, 0]) {
                         cube([wings_E, wings_thickness + 20, 200]);
                    }
               }
          }
     }
}

wing_box();
