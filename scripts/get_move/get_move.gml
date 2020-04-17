
script_execute(get_input())
#region Move
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);

//Get Direction
var dir = point_direction(0, 0, xaxis, yaxis)

//Get Length
if (xaxis == 0) and (yaxis == 0){
    len = 0;
}else{
    len = spd;
}
//Get speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
#endregion
#region Collision Check
//horizontal
if place_meeting(x+hspd, y, WallOBJ){
    while !place_meeting(x+hspd, y, WallOBJ){
        x += sign(hspd)
    }
hspd = 0;
}
x += hspd

//vertial
if place_meeting(x, y+vspd, WallOBJ){
    while !place_meeting(x, y+vspd, WallOBJ){
        y += sign(vspd)
    }
vspd = 0;
}
y += vspd
#endregion