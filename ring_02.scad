include <config.scad>;

use <bars.scad>;
use <pro54.scad>;

module ring_02() {
     difference() {
          translate([0, 0, 310])
               cylinder(r=ring_ext_dia/2, h=16);

          union() {
               bars(margin=0.5);

               scale([1.05, 1.05, 1])
                    pro54();
          }
     }
}

ring_02();
