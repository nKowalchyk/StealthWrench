/// @description Insert description here
// You can write your code in this editor
startPosX = x;
startPosY = y;
endPosX = 1024 / 2;
endPosY = 768 / 2;
targetPosX = 1024 / 2;
targetPosY = 768 / 2;
velocity = 2;
viewDistance = 200;
viewRange = 60;
targets = [];
targets[0, 0] = startPosX;
targets[0, 1] = startPosY;
targets[1, 0] = 1024 / 2;
targets[1, 1] = 768 / 2;

attackTimerBase = 100;
attackTimer = 0;

f = 0 //Frames

rays = ds_list_create();
numRays = 10;
for(i = 0; i < numRays; i++) {
	inst = instance_create_depth(x, y, 0, obj_Ray);
	inst.dist = viewDistance;
	ds_list_add(rays, inst);
}

enum State {
	Patrol, Chase, Alarm, Alert
};

state = State.Patrol;