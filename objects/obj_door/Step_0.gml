/// @description Insert description here
// You can write your code in this editor


if open
{
	image_speed = 1;
	solid = false;
	if image_index = 9
	{
		image_speed = 0	
	}
	solid = false;
}
else
{
	image_speed = -1;
	solid = true;
	if image_index = 0
	{
		image_speed = 0	
	}
}