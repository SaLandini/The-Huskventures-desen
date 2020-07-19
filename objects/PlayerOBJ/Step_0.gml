script_execute(get_move())

speedshift = speedshift - 1;
if ((key_speed) and (speedshift < 0)){
	speedshift = 10
	spd = spd + 2;
}else if ((!key_speed) and (speedshift > 9)){
	spd = 10
}