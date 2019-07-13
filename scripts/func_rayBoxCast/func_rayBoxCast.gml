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

leftCollision = func_rayCollision(x1, y1, x2, y2, originX, originY, originX, originY + height);
rightCollision = func_rayCollision(x1, y1, x2, y2, originX + width, originY, originX + width, originY + height);
topCollision = func_rayCollision(x1, y1, x2, y2, originX, originY, originX + width, originY);
bottomCollision = func_rayCollision(x1, y1, x2, y2, originX, originY + height, originX + width, originY + height);

result[0, 0] = leftCollision[0];
result[0, 1] = leftCollision[1];
result[1, 0] = rightCollision[0];
result[1, 1] = rightCollision[1];
result[2, 0] = topCollision[0];
result[2, 1] = topCollision[1];
result[3, 0] = bottomCollision[0];
result[3, 1] = bottomCollision[1];

return result;