/// CastsLight obj init rays and set position

rays = ds_list_create();
numRays = 25;
viewDistance = 100;

for(i = 0; i < numRays; i++) {
	inst = instance_create_depth(x, y, 0, obj_Ray);
	inst.originX = x;
	inst.originY = y;
	inst.dist = viewDistance;
	ds_list_add(rays, inst);
}