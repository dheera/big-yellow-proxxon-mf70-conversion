DI=12;
DO=15;
H=17.5-3.5;

difference() {
    cylinder(d=DO,h=H,$fn=256);
    difference() {
    cylinder(d=DI+0.4,h=H,$fn=256);
        
        for(i=[0:5])
            rotate([0,0,360/5*i])
        translate([(DI+0.4)/2,0,0])
        cylinder(d=0.9,h=H/2,$fn=4);
    }
    
        translate([0,0,H/2]) {
        for(i=[0:10])
            rotate([0,0,360/10*i])
        translate([DO/2,0,0])
        cylinder(d=.7,h=H,$fn=4);
        
        
        translate([0,0,H/4])
        for(i=[0:10])
            rotate([0,0,360/10*i+360/20])
        translate([DO/2,0,0])
        cylinder(d=.7,h=H,$fn=4);
        
        
for(i=[0:2:8])
    rotate([0,0,360/5*i/2])
        translate([DO/2-0.5,0,-4.5])
rotate([90,0,90])
linear_extrude(height = 0.5) {
       text(text = str(i), size = 3, font = "Ubuntu Sans:style=Bold", halign = "center");
     }
}
}
