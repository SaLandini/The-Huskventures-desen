
if place_meeting(x,y,BulletOBJ){
	gatotubhp = gatotubhp - 25;
}

if (gatotubhp == 0) {
	instance_create_layer(x,y,"Instances",ExplosionOBJ);
	instance_destroy();
}