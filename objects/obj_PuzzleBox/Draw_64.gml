/// Drawing the board area
// You can write your code in this editor



draw_set_color(c_gray)
draw_rectangle(areaX, areaY, areaX+areaWidth, areaY+areaHeight, 0)
draw_set_color(c_ltgray)

//Rules Board
draw_rectangle(areaX+(areaWidth*borderWidth), areaY+(areaWidth*borderWidth), areaX+(areaWidth*0.3), areaY+(areaHeight*(1-borderWidth)), 0)


//Game Board
draw_rectangle(gameBoardX, gameBoardY, gameBoardX2, gameBoardY2, 0)

//Nuts
//draw_set_color(c_black);

k=0;
for (i = 0; i < 3; i++){
	for(j = 0; j < 3; j++){		
		
		switch(slots[k]){
		case 0:
			draw_set_color(c_black);
			draw_circle(Xarray[i], Yarray[j], 1, 1);
			break;
		case 1:
			draw_sprite_ext(spr_PuzzleBolt, 0, Xarray[i], Yarray[j], 1, 1, 0, c_black, 1);
			break;
		case 2:
			draw_sprite_ext(spr_PuzzleBolt, 0, Xarray[i], Yarray[j], 1, 1, 0, c_blue, 1);
			break;
		case 3:
			draw_sprite_ext(spr_PuzzleBolt, 0, Xarray[i], Yarray[j], 1, 1, 0, c_red, 1);	
			break;
		}
		k++;
	}
}

//
k = 0;
for(i = 0; i<3; i++)
{
	switch(rules[k]){
	case 0:
		draw_sprite_ext(spr_Nothing, 0, threequaters, Yarray[i], 1, 1, 0, c_black, 1);
		break;
	case 1:
		draw_sprite_ext(spr_Left, 0, threequaters, Yarray[i], 1, 1, 0, c_black, 1);
		break;
	case 2:
		draw_sprite_ext(spr_Right, 0, threequaters, Yarray[i], 1, 1, 0, c_black, 1);
		break;
	}
k++;
}


draw_sprite_ext(spr_White, 0, quater, Thalf, 1, 1, 0, c_red, 1);
draw_sprite_ext(spr_White, 0, quater, halfY, 1, 1, 0, c_blue, 1);
draw_sprite_ext(spr_White, 0, quater, Bhalf, 1, 1, 0, c_black, 1);

draw_circle_color(Xarray[0], Yarray[0], 30, c_blue, c_green, 1);
/*
draw_sprite_ext(spr_Right, 0, threequaters, Thalf, 1, 1, 0, c_black, 1);
draw_sprite_ext(spr_Left, 0, threequaters, halfY, 1, 1, 0, c_black, 1);
draw_sprite_ext(spr_Nothing, 0, threequaters, Bhalf, 1, 1, 0, c_black, 1);
*/

/*
draw_sprite_ext(spr_PuzzleBolt, 0, Lhalf, Thalf, 1, 1, 0, c_red, 1);
draw_sprite_ext(spr_PuzzleBolt, 0, halfX, Thalf, 1, 1, 0, c_red, 1);
draw_sprite_ext(spr_PuzzleBolt, 0, Rhalf, Thalf, 1, 1, 0, c_red, 1);

draw_sprite_ext(spr_PuzzleBolt, 0, Lhalf, halfY, 1, 1, 0, c_blue, 1);
draw_sprite_ext(spr_PuzzleBolt, 0, halfX, halfY, 1, 1, 0, c_blue, 1);
draw_sprite_ext(spr_PuzzleBolt, 0, Rhalf, halfY, 1, 1, 0, c_blue, 1);

draw_sprite_ext(spr_PuzzleBolt, 0, Lhalf, Bhalf, 1, 1, 0, c_black, 1);
draw_sprite_ext(spr_PuzzleBolt, 0, halfX, Bhalf, 1, 1, 0, c_black, 1);
draw_sprite_ext(spr_PuzzleBolt, 0, Rhalf, Bhalf, 1, 1, 0, c_black, 1);
*/
