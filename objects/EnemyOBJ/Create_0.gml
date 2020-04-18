hp = 100;
spd = 0.5;
damage = 1;
targetX = 0;
targetY = 0;
delay = 0;

state = ENEMY_STATE.IDLE;
enum ENEMY_STATE{
	IDLE,
	CHASE,
	ATTACK
}