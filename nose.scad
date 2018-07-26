include <config.scad>;

use <nosecones.scad>;

module nose() {
     translate([0, 0, body_height]) {
          difference() {
               cone_haack(C=2/3, R=skin_int_dia/2, L=nose_height, s=80);

               union() {
                    cone_haack(C=2/3, R=skin_int_dia/2 - nose_thickness, L=nose_height - nose_thickness, s=80);
                    // cube([skin_int_dia/2, skin_int_dia/2, nose_height]);
               }
          }
     }
}

nose();
