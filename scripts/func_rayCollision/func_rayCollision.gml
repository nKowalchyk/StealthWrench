///func_rayCollision(x1, y1, x2, y2, x3, y4, x4, y4)

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
x3 = argument4;
y3 = argument5;
x4 = argument6;
y4 = argument7;
result = array_create(2);

result[0] = -100000;
result[1] = -100000;

denom = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4);
if (denom == 0) {
	return result;
}

t = ((x1 - x3) * (y3 - y4) - (y1 - y3) * (x3 - x4)) / denom;
u = -((x1 - x2) * (y1 - y3) - (y1 - y2) * (x1 - x3)) / denom;

if(t > 0 && t < 1 && u > 0) {
	collisionX = x1 + t * (x2 - x1);
	collisionY = y1 + t * (y2 - y1);
	result[0] = collisionX;
	result[1] = collisionY;
	return result;
}
else {
	return result;	
}