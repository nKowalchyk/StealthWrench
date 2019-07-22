/// Drawing the board area
// You can write your code in this editor

if goal.target != goal
{

	draw_set_color(c_gray)
	draw_rectangle(areaX, areaY, areaX+areaWidth, areaY+areaHeight, 0)
	draw_set_color(c_ltgray)

	//Rules Board
	draw_rectangle(areaX+(areaWidth*borderWidth), areaY+(areaWidth*borderWidth), areaX+(areaWidth*0.3), areaY+(areaHeight*(1-borderWidth)), 0)


	//Game Board
	draw_rectangle(gameBoardX, gameBoardY, gameBoardX2, gameBoardY2, 0)

	//Nuts GAMEBOARD
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
				draw_sprite_ext(spr_PuzzleBolt, 0, Xarray[i], Yarray[j], 1, 1, rotate[k], c_red, 1);
			
				break;
			case 2:
				draw_sprite_ext(spr_PuzzleBolt, 0, Xarray[i], Yarray[j], 1, 1, rotate[k], c_blue, 1);
			
				break;
			case 3:
				draw_sprite_ext(spr_PuzzleBolt, 0, Xarray[i], Yarray[j], 1, 1, rotate[k], c_gray, 1);
			
				break;
			}
		
			k++;
		}
	}

	//draw_circle_color(Xarray[currentx], Yarray[currenty], 30, c_blue, c_green, 1);
	draw_sprite(spr_PuzzleCircle, 0, Xarray[currentx], Yarray[currenty])

	//RULES
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
	
		if(i==0){
			colorRule[i] = k;
		}else if(i == 1){
			colorRule[i] = k;
		}else if(i == 2){
			colorRule[i] = k;	
		}
	
	k++;
	}


	draw_sprite_ext(spr_White, 0, quater, Thalf, 1, 1, 0, c_red, 1);
	draw_sprite_ext(spr_White, 0, quater, halfY, 1, 1, 0, c_blue, 1);
	draw_sprite_ext(spr_White, 0, quater, Bhalf, 1, 1, 0, c_black, 1);
}