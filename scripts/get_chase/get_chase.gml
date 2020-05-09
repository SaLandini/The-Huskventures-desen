#region move
spd = 0.6;
targetX = PlayerOBJ.x - x;
targetY = PlayerOBJ.y - y; 

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
#region
if place_meeting(x+targetXv, y, WallOBJ){
    while !place_meeting(x+targetXv, y, WallOBJ){
        x += sign(targetXv)
    }
targetXv = 0;
}
x += targetXv

//vertial
if place_meeting(x, y+targetYv, WallOBJ){
    while !place_meeting(x, y+targetYv, WallOBJ){
        y += sign(targetYv)
    }
targetYv = 0;
}
y += targetYv

#endregion
if (place_meeting(x,y,PlayerOBJ)){
	state = ENEMY_STATE.EXPLOSION
}