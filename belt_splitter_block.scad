
//test code
//block no args
//belt_block();

//cap args block_length, block_width, thickness, bolt_inset, bolt
splitter_cap(70, 40, 5, 12, 3);


//modules that make it happen

module razor(block_length, block_width)
{
translate([block_length/2-10,block_width/2,-40])
#cube ([19.05, 1, 80], center = "true");
}

module belt_block()
{
belt_width = 12.7;
belt_thick = 3;
block_width = 40;
block_length = 70;
bolt_inset = 12;
bolt = 3;
thickness = 15;

difference()
{
	//basic block
	cube([block_length, block_width, thickness], center="true");
	
	//belt cutout
	translate([0, block_width/2-belt_width/2, 0])
		cube([90, belt_width, belt_thick], center="true"); 

	//bolts holding it all together
	translate([block_length-bolt_inset,4*block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	translate([block_length-bolt_inset,block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	translate([bolt_inset,4*block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	translate([bolt_inset,block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	//slot for razor
	razor(block_length, block_width);

}
}
module splitter_cap (block_length, block_width, thickness, bolt_inset, bolt)
{
translate([0,0,-thickness])
difference()
{
	//basic block
	cube([block_length, block_width, thickness], center="true");
	
	//bolts holding it all together
	translate([block_length-bolt_inset,4*block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	translate([block_length-bolt_inset,block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	translate([bolt_inset,4*block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	translate([bolt_inset,block_width/5,-20])
	#cylinder(r=bolt/2, h=70, center= "true");

	//slot for razor
	razor(block_length, block_width);

}
}