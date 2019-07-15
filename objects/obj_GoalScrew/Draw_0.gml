/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_alpha(1)
if progress > 0
{
	draw_set_color(c_green)
	draw_rectangle(x-(sprite_width), y+sprite_height, x-sprite_width+(progress*5), y+sprite_height+30, 0)
	draw_set_color(c_black)
	draw_rectangle(x-(sprite_width), y+sprite_height, x-sprite_width+(progress*5), y+sprite_height+30, 1)
}