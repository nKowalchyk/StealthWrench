/// @description Insert description here
// You can write your code in this editor

lastX = x;
lastY = y;

f += 0.5
if f > 600
{
	f = 0
}


//pathfinding
if(state == State.Patrol) {
	if(mp_potential_step(targetPosX, targetPosY, velocity, 1)) {
		
	}	
}
else if(state == State.Chase) {
	if(attackTimer <= 0) {
		inst = instance_create_depth(x, y, 0, obj_Projectile);
		inst.dir = direction;
		attackTimer = attackTimerBase;
	}

	state = State.Patrol;
}
else if(state == State.Stop) {
	if(pauseTime >= 0) {
		pauseTime--;	
	}
	else {
		state = State.Patrol;	
	}
}

if(lastX != x || lastY != y) {
	direction = point_direction(lastX, lastY, x, y);	
}

waypointInst = instance_nearest(x, y, obj_Waypoint);
if(func_dist(x, y, waypointInst.x, waypointInst.y) < 5 && waypointInst.x == targetPosX && waypointInst.y == targetPosY) {
	targetPosX = waypointInst.targetX;
	targetPosY = waypointInst.targetY;
	pauseTime = waypointInst.stopTime;
	state = State.Stop;
}
//raytracing
for(i = 0; i < ds_list_size(rays); i++) {
	rays[| i].originX = x;
	rays[| i].originY = y;
	rays[| i].dir = (direction - viewRange / 2) + (viewRange / numRays) * i;
	if(rays[| i].collisionObj != noone) {
		if(rays[| i].collisionObj.object_index == obj_Character) {
			state = State.Chase;	
		}	
	}
}

attackTimer--;