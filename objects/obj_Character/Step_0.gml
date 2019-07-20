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
if global.focus == false
{
	if place_free(x+modx, y)
	{
		x+=modx
	}
	if place_free(x, y+mody)
	{
		y+=mody
	}
}
if (lastX != x ) or (lastY != y)
{
	currentSprite = spr_Player_Walk
	direction = point_direction(lastX, lastY, x, y)
}
else
{
	currentSprite  = spr_Player_Idle
}

if primary and not global.focus
{
	
	target = instance_nearest(x, y, obj_door)	
	if target != noone
	{
		if point_distance(target.x, target.y, x, y) < range
		{
			target.open = !target.open;
		
		}
	}
	target = instance_nearest(x, y, obj_GoalScrew)
	
	if (target != noone)
	{
		if point_distance(target.x, target.y, x, y) < range
		{
			target.progress++
			audio_play_sound(snd_Wrench, 1, false)
		
		}
	}
	
	target = instance_nearest(x, y, obj_PuzzleBoxSpawn)	
	if target != noone
	{
		if point_distance(target.x, target.y, x, y) < range
		{
			target.spawn = true;
		
		}
	}
}