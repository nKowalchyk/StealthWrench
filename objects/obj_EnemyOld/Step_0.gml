/// @description Insert description here
// You can write your code in this editor

lastX = x;
lastY = y;

//pathfinding
if(mp_potential_step(targetPosX, targetPosY, velocity, 1)) {
	if(targetPosX == startPosX) {
		targetPosX = endPosX;
		targetPosY = endPosY;
	}
	else {
		targetPosX = startPosX;
		targetPosY = startPosY;
	}
}

if(lastX != x || lastY != y) {
	direction = point_direction(lastX, lastY, x, y);	
	
}

f += 0.5
if f > 600
{
	f = 0
}

//raytracing
for(i = 0; i < ds_list_size(rays); i++) {
	rays[| i].originX = x;
	rays[| i].originY = y;
	rays[| i].dir = (direction - viewRange / 2) + (viewRange / numRays) * i;
}
