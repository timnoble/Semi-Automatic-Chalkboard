//ak dimensions
total_length = 56;
casing_length = 38.70;
base_diam = 11.35;
shoulder_diam = 10.07;
neck_diam = 8.60;
slug_diam = 7.89;

//  chalk stick, full scale
chalk_diam = 9;
chalk_length = 80;
color([0.3, 0.4, 0.6, 0.5])translate([0,0,-0.5])cylinder (h = chalk_length, r = chalk_diam/2, center = false, $fn = 100);



//this is used to scale the ak-casing sensibly
compensation = 2.5;
conversion = (chalk_diam+compensation)/slug_diam;



// ak 47 shell reconstruction, to establish proportions
// based on: http://upload.wikimedia.org/wikipedia/commons/7/75/7.62x39mm.jpg

scale([conversion,conversion,conversion])
{
color([.7,.4,.3])
union(){
translate ([0,0,0])cylinder (h = 0.25, r1 = base_diam/2 - 0.25, r2 = base_diam/2, center = false, $fn = 100);

translate ([0,0,0.25])cylinder (h = 1.25, r = base_diam/2, center = false, $fn = 100);

translate ([0,0,2.50])cylinder (h = 0.7, r1 = 9.56/2, r2 = base_diam/2, center = false, $fn = 100);

translate ([0,0,1.50]) cylinder (h = 1.0, r = 9.56/2, center = false, $fn = 100);

translate ([0,0,3.2])cylinder (h = 27.3, r1 = base_diam/2, r2 = shoulder_diam/2, center = false, $fn = 100);

translate ([0,0,30.5])cylinder (h = 2.5, r1 = shoulder_diam/2, r2 = neck_diam/2, center = false, $fn = 100);

translate ([0,0,33]) cylinder (h = 5.7, r = neck_diam/2, center = false, $fn = 100);

// %cylinder (h = total_length, r = slug_diam/2, center = false, $fn = 100);

}
};