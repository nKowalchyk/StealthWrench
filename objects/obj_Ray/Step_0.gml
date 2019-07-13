isColliding = false;
inst = func_raycast(originX, originY, dir, dist, obj_FullWall);
 
x2 = originX + dcos(dir) * dist;
y2 = originY - dsin(dir) * dist;
 
if(inst != noone) {
	ptCollision = func_rayBoxCast(originX, originY, x2, y2, inst.x1, inst.y1, inst.sprite_width, inst.sprite_height);
	show_debug_message(string(array_length_1d(ptCollision)));
	for(i = 0; i < 4; i++) {
		if(ptCollision[i, 0] != -10000 && ptCollision[i, 1] != -100000) {
			newDist = func_dist(originX, originY, ptCollision[i, 0], ptCollision[i, 1]);
			oldDist = func_dist(originX, originY, x2, y2);
			if(newDist < oldDist) {
				x2 = ptCollision[i, 0];
				y2 = ptCollision[i, 1];
			}
		}
	}
}