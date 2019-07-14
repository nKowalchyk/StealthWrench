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

rays = ds_list_create();
numRays = 10;
for(i = 0; i < numRays; i++) {
	inst = instance_create_depth(x, y, 0, obj_Ray);
	inst.dist = viewDistance;
	ds_list_add(rays, inst);
}