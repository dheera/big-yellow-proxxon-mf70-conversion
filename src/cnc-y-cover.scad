
W=57;
H=35-0.3;

for(j=[0,1])
    translate([0,0,j*(H)])
mirror([0,0,j])
for(i=[0,2,3])
    rotate([0,0,i*90])
translate([-W/2,0,0])
rotate([90,0,0])
linear_extrude(height=15,center=true)
polygon([[0,0],[1.5,0],[0,1.5]]);

difference() {
cube_center([W+3,W+3,H],r=5.5-2);
    
    cube_center([W,W,H],r=5.5);
    
    translate([0,-20,0])
        cube_center([W-12,W+10,H+2]);
    
}


intersection() {
    for(i=[-1,1])
translate([i*47.1/2,-47.2/2])
    difference() {
        cylinder(d=13,h=H,$fn=64);
cylinder(d=10,h=100,$fn=64);
    }
    
    translate([0,-61,0])
    cube_center([W-12,W+10,H+2]);
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