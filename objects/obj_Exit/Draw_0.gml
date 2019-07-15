/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_GoalScrew) == 0
{
	draw_sprite_ext(spr_Elevator, 0, x, y, 1, 1, 0, c_green, 1)
}
else
{
	draw_self()	
}

