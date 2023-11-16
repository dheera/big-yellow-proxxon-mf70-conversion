//cube_center([61,61,10],r=5);
/*for(i=[-1,1])
translate([i*28.5,9.75]) {
    cylinder(d=9,h=16,$fn=32);
}*/

difference() {
    translate([0,0,-1])
    minkowski() {
        difference() {
        union() {
            cylinder(d=20,h=15,$fn=128);
            cube_center([57.0,57.0,3],r=4.0);
        }
        
        
for(i=[-1,1])
translate([i*28.5,9.75]) {
    cylinder(d=13,h=32,$fn=64);
}


    }
        //sphere(d=4,$fn=16);
    union() {
    cylinder(d=4,h=1,$fn=16);
        translate([0,0,1])
        cylinder(d1=4,d2=2,h=1,$fn=16);
    }
        
        
    }
    mirror([0,0,-1])
    cube_center([100,100,10]);
    
   translate([0,0,17.5+2+4.5-1])
    cube_center([100,100,100]);



cylinder(d=7.0,$fn=64,h=100);

translate([0,0,2]) {
translate([0,0,0])
cylinder(d=12.3,$fn=64,h=100);

translate([0,0,1.5])
cylinder(d=13.3,$fn=64,h=100);

difference() {
translate([0,0,14.5])
cylinder(d=17,$fn=64,h=100);
    translate([0,11.6,0])
    cube_center([80,10,100]);
}
}



    for(i=[-47.1/2,47.1/2]) for(j=[-47.1/2,47.1/2])
        translate([i,j,0]) {
    cylinder(d=5.3,h=100,$fn=32);
        }
     
    
    /*translate([0,35,4])
    cube_center([28,43,50],r=5);
        
    translate([0,41,4])
    cube_center([50,18,50],r=5);
        */
        
        
    
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