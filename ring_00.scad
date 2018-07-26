include <config.scad>;

use <bars.scad>;
use <pro54.scad>;
use <wing_brackets.scad>;
use <wings.scad>;

module ring_00() {
     difference() {
          cylinder(r=ring_ext_dia/2, h=16);

          union() {
               bars(margin=0.5);

               wing_brackets();
               wings();

               scale([1.05, 1.05, 1])
                    pro54();
          }
     }
}

ring_00();
