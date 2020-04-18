#region move
spd = 5;
targetX = EnemyOBJ.x - x;
targetY = EnemyOBJ.y - y; 

var targetXv = (sign(targetX)*spd);
var targetYv = (sign(targetY)*spd);

if place_meeting(x+targetXv, y, PlayerOBJ){
    while !place_meeting(x+targetXv, y, PlayerOBJ){
        x += sign(targetXv)
    }
targetXv = 0;
}
x += targetXv

if place_meeting(x, y+targetYv, PlayerOBJ){
    while !place_meeting(x, y+targetYv, PlayerOBJ){
        y += sign(targetYv)
    }
targetYv = 0;
}
y += targetYv
#endregion

#region switch
if (distance_to_object(PlayerOBJ) > 500){ state = ENEMY_STATE.IDLE }

if (place_meeting(x,y,PlayerOBJ)){ state = ENEMY_STATE.ATTACK }else if (distance_to_object(PlayerOBJ) < 500){ state = ENEMY_STATE.CHASE }
#endregion