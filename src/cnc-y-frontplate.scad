translate([0,0,0])
mirror([0,0,0]) outer();

H=25;
DH=H-8.1+0.5;

module outer() {
difference () {
    
            union() {
            difference() {
              
                scale([0.98,0.96,H/3])
                translate([21.4,-6.3,0])
                rotate([0,0,180])
                import("include/profile_outer.stl");
                
                
                for(i=[-1,1])
                translate([i*19.0,-4.1,0])
                cylinder(d=3.3,h=50,$fn=64);
                
                
                translate([0,-9,24.5])
                cylinder(d1=1.5,d2=1.5,h=0.5,$fn=32);
                
                
                translate([-20.5,11.5,0])
                rotate([0,0,45])
                cube_center([20,10,50]);
                
                
                translate([17,11.5,0])
                rotate([0,0,-45])
                cube_center([20,10,50]);
            }
            
            translate([-1.96,-11.86,0])
            cube_center([44.05,0.5,H]);
            
            difference() {
                cube_center([61,61,DH],r=4);
                rotate([2,0,0])
                translate([0,20.5,3])
                cube_center([61,61,50]);
                
                translate([0,0,DH])
                rotate([2,0,0])
                cube_center([61,61,10]);
                
                for(i=[-47.1/2,47.1/2])
                    translate([i,47.1/2,0.0]) {
                    cylinder(d=5.3,h=100,$fn=64);
                        translate([0,0,.5])
                        cylinder(d1=5.3,d2=10.3,h=2.8,$fn=64);
                        
                        translate([0,0,.5+2.8])
                        cylinder(d=10.3,h=2.8,$fn=64);
                    }
                    
                    for(i=[-47.1/2,47.1/2])
                    translate([i,-47.1/2,0]) {
                    cylinder(d=5.3,h=100,$fn=64);
                        translate([0,0,DH-2.7-1.0-0.5])
                        cylinder(d1=5.3,d2=10.3,h=2.8,$fn=64);
                        translate([0,0,DH-1.0-0.5])
                        cylinder(d=10.3,h=2.8,$fn=64);
                    }
                    
                /*for(i=[-12,12]) {
                    translate([i,-18,0]) {
                cylinder(d=5.3,h=100,$fn=64);
                        
                    cylinder(d1=9.6,d2=5.3,h=2.7,$fn=64);
                        
                    }
                }*/
            }
            
            translate([0,-.3,0])
            cylinder(d=14.7,h=H);
            
            for(i=[-1,1])
            translate([i*19.0,-4.1,0])
                cylinder(d=5.5,h=H,$fn=32);
            
            }


    translate([0,0,-.001]) {
    cylinder(d=13.3,h=50,$fn=128);
    }
        
            
    for(i=[-1,1])
    translate([i*19.0,-4.1,0]) {
        //cylinder(d1=6.3,d2=3.3,h=1.7,$fn=64);
    cylinder(d=3.3,h=50,$fn=64);
    }


    //cylinder(d=33,h=4,$fn=64);
}
}
//cylinder(d=7.8,h=4,$fn=64);

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