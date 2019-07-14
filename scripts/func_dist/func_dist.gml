///func_dist(x1, y1, x2, y2)

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

first = sqr(x2 - x1);
second = sqr(y2 - y1);
result = sqrt(first + second);

return result;