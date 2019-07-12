///func_raycast(originX, originY, dir, dist, obj_target)

x1 = argument0;
y1 = argument1;
dir = argument2;
dist = argument3;
target = argument4;
result = noone;

x2 = x1 + dcos(dir) * dist;
y2 = y1 - dsin(dir) * dist;

result = collision_line(x1, y1, x2, y2, target, true, true);

if(result) {
	x2 = result.x;
	y2 = result.y;
}

draw_set_color(c_lime);
draw_line(x1, y1, x2, y2);