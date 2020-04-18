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
		speed = 20;
		direction = other.image_angle;
		image_angle = direction;
		
	}
}