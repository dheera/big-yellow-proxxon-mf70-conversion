module pentagon() {
    translate([0,-8.6-0.25,0])
    polygon(points=[[0,0],[-32.25,11],[-32.25,17.2],[32.25,17.2],[32.25,11]]);
}
H=10+12.5;

difference() {
    union() {
        intersection() {
    
            cube_center([70,19.5*2+.5,H],r=1);
            
            
            
            union() {
    minkowski() {
        linear_extrude(height=H)
        pentagon();
        cylinder(d=2,h=0.001,$fn=16);
        rotate([0,0,45])
        cylinder(d=5,h=0.001,$fn=4);
    }
    
    
    translate([0,13,0])
    cube_center([70,13.5,H]);

    
}
    
        }
        
        difference() {
                cube_center([61,61,H],r=4);
            
    translate([0,-61/2+3.5,H-1.35])
    rotate([3,0,0])
    
                cube_center([61,61,H]);
            
            
    translate([0,-30.5/2,H-14])
            cube_center([61,30.5,100]);
            
            
            
           /*
    difference() {
    translate([0,-(61-14)-10,H-14])
   rotate([-45,0,0])
    cube_center([61,61,100]);
        cube_center([100,100,H-14]);
    }*/
        }
        
        
        for(i=[-1,1])
            translate([i*12.25,13.5,0])
            cube_center([5.8,6.8,H+4],r=0.5);
        
        for(i=[-1,0,1])
            translate([i*25,14.25,0])
            cube_center([11.5,5,H+4],r=0.5);
        
        
        for(i=[0])
            translate([i*25,14.25+3,0])
            cube_center([6,5,H+4],r=0.5);
        
        for(i=[-1,1])
            translate([i*25,14.25+1.5,0])
            cube_center([6,5,H+4],r=0.5);
        
    }
    cylinder(d=13.3,h=100,$fn=64);
    
    translate([0,0,H-1.75])
    minkowski() {
        linear_extrude(height=2)
        pentagon();
        cylinder(d=0.5,h=0.001,$fn=16);
    }
    
    for(i=[-1,1]) {
            translate([-i*19,6.25,0])
        cylinder(d=3.3,h=100,$fn=32);
    }
    
    translate([0,-(61-14),H-14])
    cube_center([61,61,100]);
    
    
    translate([0,-61/2,H-14-11*0.45])
    rotate([25,0,0])
    cube_center([61,30,10]);
    
    for(i=[-47.1/2,47.1/2]) 
                    translate([i,47.1/2,0]) {
                    cylinder(d=5.3,h=100,$fn=64);
                        translate([0,0,H-2.7-.3])
                        cylinder(d1=5.3,d2=10.3,h=2.8,$fn=64);
                        
                        translate([0,0,H-.3])
                        cylinder(d=10.3,h=52.8,$fn=64);
                    }
                    
                        for(i=[-47.1/2,47.1/2]) 
                    translate([i,-47.1/2,0]) {
                        cylinder(d=5.3,h=100,$fn=64);
                        translate([0,0,4-2.8-0.3])
                        cylinder(d1=5.3,d2=10.3,h=2.8,$fn=64);
                        translate([0,0,4-0.3])
                        cylinder(d=10.3,h=100,$fn=64);
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