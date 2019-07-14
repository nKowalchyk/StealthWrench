/// Character Movement
// You can write your code in this editor
modx = 0
mody = 0

if left
{
	modx -= spd;
}
if right
{
	modx += spd;	
}
if up
{
	mody -= spd;	
}
if down
{
	mody += spd;
}
lastX = x
lastY = y
x+=modx
y+=mody
if (lastX != x ) or (lastY != y)
{
	image_angle = point_direction(lastX, lastY, x, y)
}