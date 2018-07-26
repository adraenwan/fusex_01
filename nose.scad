include <config.scad>;

use <nosecones.scad>;

module nose() {
     translate([0, 0, body_height]) {
          //cylinder(h=cone_height, r1=skin_int_dia/2, r2=0);
          cone_haack(C=2/3, R=skin_int_dia/2, L=cone_height, s=$fn);
     }
}

nose();
