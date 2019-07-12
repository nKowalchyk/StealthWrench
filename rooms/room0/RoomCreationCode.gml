global.visibleObjects = ds_list_create();

for(i = 0; i < 5; i++) {
	//inst = instance_create_depth(i * 5, 50, 0, obj_FullWall);
	//ds_list_add(global.visibleObjects, inst);
}

inst = instance_create_depth(1024 / 2, 768 / 2, 0, obj_CastsLight);

ds_list_add(global.visibleObjects, inst);