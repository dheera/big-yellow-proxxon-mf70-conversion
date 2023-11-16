//translate([0,0,2])
mirror([1,0,0]) inner();
//mirror([1,0,0]) outer();

module inner() {
    
    translate([0,0,0])
{
     difference() {
        union() {
        scale([1,1,125/3])
            mirror([1,0,0])
            translate([-16.5,-8,0])
                import("profile_inner.stl");
            
            translate([-1.3,5.9,0])
         cube_center([17,3,5]);
            
            translate([-1.3,5.9,120])
         cube_center([17,3,5]); 
            
            intersection() {
            
          scale([0.98,0.96,125/3])
translate([21.4,-6.3,0])
rotate([0,0,180])
import("profile_outer.stl");
                
                translate([-2.3,5.9,0])
                cube_center([37.6,10,125]);
            }
            
        }
        
         
         for(i=[-1,1]) for(j=[8,125/2,125-8])
             scale([i,1,1])
         translate([12.5,0,j])
         rotate([-90,0,0]) {
             translate([0,0,-9])
            cylinder(d=3.3,h=10,$fn=64,center=true);
             
             
             translate([0,0,6])
            cylinder(d=3,h=10,$fn=64,center=true);
             
             translate([5.8/2,0,-4])
             cube_center([2*5.8,5.8,2.3]);
         }
         
         translate([0,-.5,5])
         cube_center([14,12,125-10]);
         
         
         translate([0,5,5])
         cube_center([18,12,125-10]);
         
         
         translate([-27.1,5,0])
         cube_center([20,50,125]);
         
         translate([0,10.2-1.5,5])
         cube_center([100,10,125-10]);
    }
    
    
    difference() {
        cylinder(d=11.8,h=125,$fn=64);
        translate([0,0,-.1])
        cylinder(d=7.3,h=150,$fn=64);
        
         translate([0,-.5,5])
         cube_center([14,12,125-10]);
        
         translate([0,6,5])
         cube_center([18,12,125-10]);
    }
    
    
    
    
}

}

module outer() {


difference() {
scale([0.98,0.96,2/3])
translate([21.4,-6.3,0])
rotate([0,0,180])
import("profile_outer.stl");
    
    /*
         for(i=[-10,10])
        translate([i,-2,0])
        cylinder(d=2.5,h=100,$fn=64);*/
    
    for(i=[-1,1])
translate([i*19.0,-4.1,0])
    cylinder(d=3.3,h=50,$fn=64);
    
    
    
translate([-20.5,11.5,0])
rotate([0,0,45])
cube_center([20,10,10]);
    
    
translate([17,11.5,0])
rotate([0,0,-45])
cube_center([20,10,10]);
    
    
}
difference() {
    translate([0,-1,0])
cylinder(d=15,h=2,$fn=64);
    translate([0,0,-.1])
    cylinder(d=12.3,h=50,$fn=64);
    translate([0,0,-.1])
cylinder(d=12.3,h=2,$fn=64);
}

for(i=[-1,1])
translate([i*19.0,-4.1,0])
difference()  {
    cylinder(d=6,h=2,$fn=32);
    translate([0,0,-.1])
    cylinder(d=3.3,h=50,$fn=64);
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