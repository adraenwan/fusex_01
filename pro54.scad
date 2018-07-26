include <config.scad>;

module pro54() {
     dim_a = 12.21;

     scale([25.4, 25.4, 25.4]) { // convert in to mm
          translate([0, 0, 0.375 / 6]) {
               // cap
               translate([0, 0, dim_a])
                    cylinder(r=1.25/2, h=0.60);

               // body
               cylinder(r=2.125/2, h=dim_a);

               translate([0, 0, -0.375]) {
                    // ring
                    cylinder(r=2.275/2, h=0.375);

                    // nozzle
                    translate([0, 0, -0.52])
                         cylinder(r=1.25/2, h=0.52);
               }
          }
     }
}

pro54();
