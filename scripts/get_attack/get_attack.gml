delay --;
if (delay < 0) and (place_meeting(x,y,PlayerOBJ)){
	global.hp = global.hp - 10;
	delay = 50;
}
if (!place_meeting(x,y,PlayerOBJ)){ state = ENEMY_STATE.CHASE }