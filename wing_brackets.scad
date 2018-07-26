include <config.scad>;

module wing_brackets() {
     n = 4;
     diameter = 10;

     module bracket() {
          translate([0, wings_thickness/2, 0]) {
               cube([2, 10, 200]);
               cube([10, 2, 200]);
          }
     }

     for (i = [0:n])
          rotate([0, 0, i * 360 / n + 21])
               translate([ring_ext_dia/2 - 2, 0, 0]) {
               bracket();

               mirror([0, 1, 0])
                    bracket();
          }
}

wing_brackets();
