switch(state){
	case ENEMY_STATE.IDLE:	get_idle(); break;
	case ENEMY_STATE.CHASE: get_chase(); break;
	case ENEMY_STATE.ATTACK: get_attack(); break;
}