/// Draws Raycasts

for(i = 0; i < numRays; i++) {
	//for(j = 0; j < ds_list_size(global.visibleObjects); j++) {
		func_raycast(x, y, 360 / 25 * i, viewDistance, obj_VisibleObject);	
	//} 
}