/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red)
if instance_number(obj_PuzzleBox) > 0
{
	draw_line(x, y, target.x, target.y)
}
draw_self()