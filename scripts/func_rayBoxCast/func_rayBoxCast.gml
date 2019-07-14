///func_rayBoxCast(x1, y1, x2, y2, originX, originY, width, height)

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
originX = argument4;
originY = argument5;
width = argument6;
height = argument7;

var result;
var dist;
var closestCollision = 10000;
var index = 0;

leftCollision = func_rayCollision(x1, y1, x2, y2, originX, originY, originX, originY + height);
rightCollision = func_rayCollision(x1, y1, x2, y2, originX + width, originY, originX + width, originY + height);
topCollision = func_rayCollision(x1, y1, x2, y2, originX, originY, originX + width, originY);
bottomCollision = func_rayCollision(x1, y1, x2, y2, originX, originY + height, originX + width, originY + height);

dist[0] = func_dist(x1, y1, leftCollision[0], leftCollision[1]);
dist[1] = func_dist(x1, y1, rightCollision[0], rightCollision[1]);
dist[2] = func_dist(x1, y1, topCollision[0], topCollision[1]);
dist[3] = func_dist(x1, y1, bottomCollision[0], bottomCollision[1]);

for(i = 0; i < array_length_1d(dist); i++) {
	if(dist[i] < closestCollision) {
		closestCollision = dist[i];
		index = i;
	}
}

if(index == 0) {
	result = leftCollision;
}
else if(index == 1) {
	result = rightCollision;
}
else if(index == 2) {
	result = topCollision;
}
else if(index == 3) {
	result = bottomCollision;
}
return result;