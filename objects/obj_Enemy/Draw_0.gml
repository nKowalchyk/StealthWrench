/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_Enemy, floor(f) % 6, x, y, 1, 1, direction, c_white, 1);
draw_set_alpha(.25);
if(state == State.Chase) {
	draw_set_color(c_red);
}
else {
	draw_set_color(c_green);	
}

for(i = 0; i < ds_list_size(rays) - 1; i++) {
	draw_triangle(x, y, rays[| i].x2, rays[| i].y2, rays[| i + 1].x2, rays[| i + 1].y2, false);	
}
draw_set_alpha(1);