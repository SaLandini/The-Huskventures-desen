if (place_meeting(x,y,PlayerOBJ)){
	instance_create_layer(x,y,"Instances",ExplosionOBJ)
	instance_destroy();
}