module pentagon() {
    translate([0,-8.6-0.25,0])
    polygon(points=[[0,0],[-32.25,11],[-32.25,17.2],[32.25,17.2],[32.25,11]]);
}

difference() {
    union() {
        intersection() {
    
            cube_center([70,19.5*2+.5,6],r=1);
            union() {
    minkowski() {
        linear_extrude(height=15)
        pentagon();
        cylinder(d=2,h=0.001,$fn=16);
        rotate([0,0,45])
        cylinder(d=5,h=0.001,$fn=4);
    }
    
    
    translate([0,13,0])
    cube_center([70,13.5,15]);

    
}
    
        }
        
        for(i=[-1,1])
            translate([i*12.25,13.5,0])
            cube_center([5.8,6.8,14],r=0.5);
        
        
        
    }
    translate([0,0,6-1.75-1.5])
    cylinder(d=12.3,h=100,$fn=64);
    translate([0,0,6-1.75-1.5-2])
    cylinder(d1=13.3,d2=12.3,h=2,$fn=64);
    cylinder(d=13.3,h=6-1.75-1.5-2,$fn=64);
    
    translate([0,0,6-1.75])
    minkowski() {
        linear_extrude(height=2)
        pentagon();
        cylinder(d=0.5,h=0.001,$fn=16);
    }
    
    for(i=[-1,1]) {
            translate([-i*19,6.25,0])
        cylinder(d=3.3,h=100,$fn=32);
    }
    
    
    
    
        for(i=[-1,0,1]) { 
            translate([i*25,14.25,0])
            cube_center([12.5,5.8,100]);
        
        
            translate([i*25,14.25+3,0])
            cube_center([6.5,5,100]);
        }
    



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