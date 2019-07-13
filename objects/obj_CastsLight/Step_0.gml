/// Update raycast
for(i = 0; i < ds_list_size(rays); i++) {
	rays[| i].originX = x;
	rays[| i].originY = y;
	rays[| i].dir = (360 / numRays) * i;
}