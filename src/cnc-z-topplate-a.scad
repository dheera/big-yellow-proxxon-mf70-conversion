module trackcutout() {
tW1=52.5;
tD=8.5;
tW2=44;;
    
    for(i=[0,1]) {
        mirror([i,0,0]) {
translate([0,0,0])
    translate([0,-13.9+9,0])
        linear_extrude(height=1)
polygon([[tW1/2,0],[tW2/2,tD],[100,tD],[100,0]]);
       
        translate([0,-13.9+9,0]) {
        cube([10.5,11.5,1]);
            cube([18,3,1]);
            
            
            
    translate([0,-9.9,0])
        cube([50,10,1]);
        }
        
        
    }
    
}
   
    
}


module profile() {
minkowski() {
    linear_extrude(height=1)
polygon([[32.5,-11.4],[-32.5,-11.4],[-32.5,24],[-22.5,61.1],[22.5,61.1],[32.5,24]]);
    
    cylinder(d=5,h=0.0001,$fn=64);
}

}

difference() {
    union() {
translate([0,0,0])
    scale([1,1,15+18.5+10])
profile();
        
        
                cube_center([61,61,10],r=5);
        
        
        
    }

for(i=[-1,1])
translate([i*28.5,9.75]) {
cylinder(d=3.3,h=100,$fn=64);
}


for(i=[-1,1])
translate([i*20,55.25]) {
cylinder(d=3.3,h=100,$fn=64);
}


cylinder(d=7.0,$fn=64,h=100);

translate([0,0,7]) {
translate([0,0,10])
cylinder(d=12.3,$fn=64,h=100);

translate([0,0,11.5])
cylinder(d=13.0,$fn=64,h=100);

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
            translate([0,0,10-2.8])
            cylinder(d1=5.3, d2=10.3,h=2.8,$fn=32);
            translate([0,0,10])
            cylinder(d=10.3,h=100,$fn=32);
        }
     
    
    /*translate([0,35,4])
    cube_center([28,43,50],r=5);
        
    translate([0,41,4])
    cube_center([50,18,50],r=5);
        */
        
        difference() {
        minkowski() {
    translate([0,0,4])
        linear_extrude(height=40)
        
  /*      polygon([[11,16],[11,36],[23,36],[20,47],
            [11,47],[11,54],[-11,54],[-11,47],
            [-20,47],[-23,36],[-11,36],[-11,16]]);

*/

        
        polygon([[26,19],[26,24],[23,36],[20,47],
            [11,47],[11,54],[-11,54],[-11,47],
            [-20,47],[-23,36],[-26,24],[-26,19]]);            
            
            cylinder(d=8,$fn=32,h=0.0001);
        }
        
      
        cube_center([61,61,10]);
        
        
    }
        
translate([0,0,18.5+10])
        scale([1,1,100])
trackcutout();
    
    
    
translate([0,64,0])
rotate([0,90,0])
cylinder(d=5,$fn=4,h=150,center=true);
    
for(i=[-1,1])
    scale([i,1,1]) {
translate([-24.35,64,0])
rotate([0,0,75])
rotate([0,90,0])
cylinder(d=5,$fn=4,h=150,center=true);
        
        translate([-35,32,0])
rotate([0,0,90])
rotate([0,90,0])
cylinder(d=5,$fn=4,h=150,center=true);
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