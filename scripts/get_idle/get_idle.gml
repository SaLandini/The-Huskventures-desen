spd = 0;
x = EnemyOBJ.x;
y = EnemyOBJ.y;

if (distance_to_object(PlayerOBJ) < 500){ state = ENEMY_STATE.CHASE }