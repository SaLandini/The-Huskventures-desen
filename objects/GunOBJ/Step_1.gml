// position
x = PlayerOBJ.x;
y = PlayerOBJ.y;

// point direction
image_angle = point_direction(x,y,mouse_x,mouse_y)

// shoot
firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) and (firingdelay < 0){
	firingdelay = 10;
	with (instance_create_layer(x,y,"Shoot",BulletOBJ)){
		speed = 40;
		direction = other.image_angle;
		image_angle = direction;
		
	}
}

if (firingdelay < 0) and (!instance_exists(Active)){
	instance_create_layer(0,0,"Shoot",Active)
}else if (firingdelay > 0){ instance_destroy(Active)}
