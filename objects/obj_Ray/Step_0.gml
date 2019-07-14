x2 = originX + dcos(dir) * dist;
y2 = originY - dsin(dir) * dist;

collisionObj = func_collision_line_first(originX, originY, x2, y2, true, true, obj_VisibleObject);
 
if(collisionObj != noone) {
	ptCollision = func_rayBoxCast(originX, originY, x2, y2, collisionObj.x, collisionObj.y, collisionObj.sprite_width, collisionObj.sprite_height);
	x2 = ptCollision[0];
	y2 = ptCollision[1];
}