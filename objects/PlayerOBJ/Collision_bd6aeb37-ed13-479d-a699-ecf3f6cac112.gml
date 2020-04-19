delay = delay - 1;
if (place_meeting(x,y,EnemyOBJ)) and (delay < 0){
	delay = 10
	hp = hp - 2	
}
if (hp == 0){game_end()}