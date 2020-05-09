delay = delay - 1;
if (place_meeting(x,y,ExplosionOBJ)) and (delay < 0){
	delay = 20
	global.hp = global.hp - 5	
}
if (global.hp == 0) {
	room_goto(rm_3)	
}
