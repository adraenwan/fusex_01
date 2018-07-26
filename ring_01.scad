include <config.scad>;

use <bars.scad>;
use <pro54.scad>;
use <wing_brackets.scad>;
use <wings.scad>;

module ring_01() {
     height = 16;

     difference() {
          translate([0, 0, 200 - height])
               cylinder(r=ring_ext_dia/2, h=height);

          union() {
               bars(margin=0.5);

               wing_brackets();
               wings();

               scale([1.05, 1.05, 1])
                    pro54();
          }
     }
}

ring_01();
