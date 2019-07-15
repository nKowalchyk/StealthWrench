/// @description Insert description here
// You can write your code in this editor
startPosX = x;
startPosY = y;
endPosX = x;
endPosY = y;
targetPosX = x;
targetPosY = y;
velocity = 2;
viewDistance = 250;
viewRange = 60;
pauseTime = 0;

f = 0 //Frames

attackTimerBase = 100;
attackTimer = 0;

rays = ds_list_create();
numRays = 10;
for(i = 0; i < numRays; i++) {
	inst = instance_create_depth(x, y, 0, obj_Ray);
	inst.dist = viewDistance;
	ds_list_add(rays, inst);
}

enum State {
	Patrol, Chase, Alarm, Alert, Stop
};

state = State.Patrol;