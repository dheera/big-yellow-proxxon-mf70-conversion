//cylinder(d=12,h=15,$fn=32);
difference() {union(){
translate([0,0,0])intersection() {
cylinder(d=16.2,$fn=128,h=15);
    cube_center([15,15,100]);
}
    translate([0,-12.5,0])
    cube_center([10,25,4],r=4.9);
}
translate([0,11.6,0])
cube_center([80,10,100]);
    
translate([0,0,4]) {
    cylinder(d=11.8,$fn=6,h=16);
}
    
translate([0,0,14])
    cylinder(d1=11.8,d2=12.3,$fn=6,h=1);
    
    translate([0,0,0])
    cylinder(d=7,$fn=32,h=100);
}


module cube_center(dims,r=0,$fn=64) {
    if(r==0) {
        translate([-dims[0]/2, -dims[1]/2, 0])
        cube(dims);
    } else {
        minkowski() {
            translate([-(dims[0]-2*r)/2, -(dims[1]-2*r)/2, 0])
            cube([dims[0]-2*r,dims[1]-2*r,dims[2]]);
            cylinder(r=r,$fn=$fn,h=0.0001);
        }
    }
}