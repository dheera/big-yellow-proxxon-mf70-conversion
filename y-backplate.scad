translate([0,0,0])
mirror([1,0,0]) outer();

module inner() {
    
    translate([0,0,0])
{
     difference() {
        union() {
        scale([1,1,25/3])
            mirror([1,0,0])
            translate([-17.0,-8,0])
                import("profile_inner.stl");
            
            translate([-1.3,5.9,0])
         cube_center([17.5,3,5]);
            
            intersection() {
            
          scale([0.98,0.96,21/3])
translate([21.4,-6.1,0])
rotate([0,0,180])
import("profile_outer.stl");
                
                translate([-1.3,5.9,0])
                cube_center([37.6,10,5]);
            }
            
        }
        
         
         for(i=[-12,12]) for(j=[5,20])
         translate([i,0,j])
         rotate([90,0,0])
         cylinder(d=2.5,h=100,center=true,$fn=64);
         
         translate([0,-.5,5])
         cube_center([14,12,50]);
         
         rotate([15,0,0])
         translate([0,5,6])
         cube_center([14,12,50]);
         
         translate([0,6,5])
         cube_center([18,12,50]);
         
         rotate([15,0,0])
         translate([0,6+5.5,5])
         cube_center([18,12,50]);
         
         translate([0,10.2-1.5,5])
         cube_center([100,10,100]);
    }
    
    
    difference() {
        cylinder(d=10.3,h=25,$fn=64);
        translate([0,0,-.1])
        cylinder(d=7.3,h=100,$fn=64);
        
         translate([0,-.5,5])
         cube_center([14,12,50]);
        
         translate([0,6,5])
         cube_center([18,12,50]);
    }
    
    
    
    
}

}

module outer() {
difference () {
    
            union() {
            difference() {
              
                scale([0.98,0.96,4/3])
                translate([21.4,-6.3,0])
                rotate([0,0,180])
                import("profile_outer.stl");
                
                
                for(i=[-1,1])
                translate([i*19.0,-4.1,0])
                cylinder(d=3.3,h=50,$fn=64);
                
                
                
                translate([-20.5,11.5,0])
                rotate([0,0,45])
                cube_center([20,10,50]);
                
                
                translate([17,11.5,0])
                rotate([0,0,-45])
                cube_center([20,10,50]);
            }
            //cube_center([58.4,58.4,4],r=4);
            translate([0,-.3,0])
            cylinder(d=14.7,h=4);
            
            for(i=[-1,1])
            translate([i*19.0,-4.1,0])
                cylinder(d=5.5,h=4,$fn=32);
            
            }


    translate([0,0,-.001]) {
    cylinder(d=12.3,h=50,$fn=128);
        cylinder(d=13.3,h=4-3,$fn=128);
        translate([0,0,4-3])
        cylinder(d1=13.3,d2=12.3,h=1.5,$fn=128);
    }
        
            
    for(i=[-1,1])
    translate([i*19.0,-4.1,0])
    cylinder(d=3,h=50,$fn=64);


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