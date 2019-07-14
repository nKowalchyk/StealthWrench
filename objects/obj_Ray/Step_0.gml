collisionObj = noone;
inst = func_raycast(originX, originY, dir, dist, obj_FullWall);
 
x2 = originX + dcos(dir) * dist;
y2 = originY - dsin(dir) * dist;
 
if(inst != noone) {
	ptCollision = func_rayBoxCast(originX, originY, x2, y2, inst.x, inst.y, inst.sprite_width, inst.sprite_height);
	x2 = ptCollision[0];
	y2 = ptCollision[1];
	collisionObj = inst;
}