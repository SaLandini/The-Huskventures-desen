script_execute(get_input())


if !instance_exists(EnemyOBJ) and place_meeting(x,y,PlayerOBJ){
	if key_open {
		room_goto(rm_5)	
	}
}