global.visibleObjects = ds_list_create();
global.debug = true;

for(i = 0; i < 25; i++) {
	inst = instance_create_depth(500 + i * 32, 500, 0, obj_FullWall);
	ds_list_add(global.visibleObjects, inst);
}

inst = instance_create_depth(1024 / 2, 768 / 2, 0, obj_FullWall);
inst = instance_create_depth(1024 / 2 + 32, 768 / 2, 0, obj_FullWall);
inst = instance_create_depth(1024 / 2, 768 / 2 + 32, 0, obj_FullWall);
inst = instance_create_depth(1024 / 2 + 32, 768 / 2 + 32, 0, obj_FullWall);

inst = instance_create_depth(1024 / 2, 768 / 2, 0, obj_CastsLight);

ds_list_add(global.visibleObjects, inst);