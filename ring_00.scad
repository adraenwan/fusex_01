include <config.scad>;

use <bars.scad>;
use <pro54.scad>;
use <wing_brackets.scad>;
use <wing_box.scad>;

module ring_00() {
     difference() {
          cylinder(r=ring_ext_dia/2, h=16);

          union() {
               bars(margin=0.5);

               wing_box();

               scale([1.05, 1.05, 1])
                    pro54();
          }
     }
}

ring_00();
