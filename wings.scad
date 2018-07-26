include <config.scad>;

module wings() {
     n = wings_nb;
     diameter = 10;

     for (i = [0:n])
          rotate([0, 0, i * 360 / n + 21])
               translate([ring_ext_dia/2 - 2, 0, 0]) {
               translate([0, -wings_thickness/2 - 0.001, -0.001]) {
                    polyhedron([
                                    [0,       0,                                     0],                       // 0
                                    [wings_E, 0, 0.002 + wings_m - (wings_p + wings_n)],                       // 1
                                    [wings_E, 0, 0.002 + wings_m - wings_p],                                   // 2
                                    [0,       0, 0.002 + wings_m],                                             // 3

                                    [0,       wings_thickness + 0.002, 0],                                     // 4
                                    [wings_E, wings_thickness + 0.002, 0.002 + wings_m - (wings_p + wings_n)], // 5
                                    [wings_E, wings_thickness + 0.002, 0.002 + wings_m - wings_p],             // 6
                                    [0,       wings_thickness + 0.002, 0.002 + wings_m]],                      // 7
                               [
                                    [0, 4, 7, 3],   // rear
                                    [0, 3, 2, 1],   // left
                                    [0, 1, 5, 4],   // bottom
                                    [4, 5, 6, 7],   // right
                                    [2, 3, 7, 6],   // top
                                    [1, 2, 6, 5]]); // front
               }
          }
}

wings();
