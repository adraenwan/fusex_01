include <config.scad>;

module bars(margin=0) {
     n = 3;
     diameter = 10;

     group_radius = (ring_ext_dia - 20)/2;

     for (i = [0:n])
          rotate([0, 0, i * 360 / n])
               translate([group_radius, 0, 0])
               cylinder(r=diameter/2 + margin, h=body_height);
}

bars();
