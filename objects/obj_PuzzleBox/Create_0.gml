/// Randomize the puzzle
// You can write your code in this editor

randomize();

currentx = 0;
currenty = 0;
color_rule = [];
colorRule = [];
rotate = [];
answerboard = [];
currentboard = [];

for(i=0;i<9;i++){
	rotate[i] = 0;
}
for(i=0;i<3;i++){
	colorRule[i] = 0;	
}

areaWidth = room_width/2;
areaHeight = room_height/2;
areaX = 0;
areaY = 0;
borderWidth = 0.02;

gameBoardX = areaX+(areaWidth*(0.30+borderWidth));
gameBoardY = areaY+(areaWidth*borderWidth);
gameBoardX2 = areaX+(areaWidth*(1-borderWidth));
gameBoardY2 = areaY+(areaHeight*(1-borderWidth));

//Color


//Nut types

for(i=0;i<3;i++){
	for(j=0;j<3;j++){
		color_rule[i, j] = 0;
		answerboard[i, j] = 0;
		currentboard[i, j] = 0;
	}
}

//Nut placements
halfX = areaX+(gameBoardX2 + gameBoardX)/2;
halfY = areaY+(gameBoardY2 + gameBoardY)/2;

Thalf = areaY+(halfY + gameBoardY)/2;
Bhalf = areaY+(gameBoardY2 + halfY)/2;

Lhalf = areaX+(halfX + gameBoardX)/2;
Rhalf = areaX+(gameBoardX2 + halfX)/2;

//rule placements
quater = (gameBoardX + x)*.10;
threequaters = (gameBoardX + x)*.30;

//Rarray = [quarter, threequarter];

//Random Rules
rules = [];

for (i=0; i<3; i++){
	rules[i] = irandom(2);
	if (i == 2)
	{
		sum = rules[0] + rules[1] + rules[2];
		if(sum == 0)
		{
			i = 0;	
		}
	}
}

slots = [];

for (i = 0; i<9; i++)
{
	 slots[i] = irandom(3);
}

show_debug_message("SLOTS MACHINE");
for(i=0;i<9;i++){
	show_debug_message(slots[i]);
}
counting = [];
mapping_array = [];
k = 0;

for(i = 0; i < 3; i++){
	for(j = 0; j < 3; j++){
		
		mapping_array[i, j] = slots[k];		
		counting[i, j] = k;
		
		if(slots[k] == 0){
			k++;
			continue;
		}
		
		if rules[max(slots[k]-1, 0)] == 2
		{
			rules[max(slots[k]-1, 0)] = -1	
		}

		answerboard[i, j] = -90*rules[max(slots[k]-1, 0)]
		
			
		if rules[max(slots[k]-1, 0)] == -1
		{
			rules[max(slots[k]-1, 0)] = 2	
		}
		
		k++;
	}
}
/*
show_debug_message("Mapping Board");
for(i=0;i<3;i++){
	for(j=0;j<3;j++){
		show_debug_message(mapping_array[i, j]);
	}
}

show_debug_message("Answer Board");
for(i=0;i<3;i++){
	for(j=0;j<3;j++){
		show_debug_message(answerboard[i, j]);
	}
}*/
/*
		for(h = 0; h < 3; h++){
			if(mapping_array[i, j] == h){
				for(g = 0; g < 3; g++){
					if(colorRule[g] == 0){
						answerboard[i, j] = 0;
					}else if(colorRule[g] == 1){
						answerboard[i, j] = 90;
					}else if(colorRule[g] == 2){
						answerboard[i, j] = -90;
					}
				}				
			}			
		}
*/

Xarray = [Lhalf, halfX, Rhalf];
Yarray = [Thalf, halfY, Bhalf];
