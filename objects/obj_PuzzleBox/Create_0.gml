/// Randomize the puzzle
// You can write your code in this editor

randomize();

currentx = 0;
currenty = 0;

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
blueRule = irandom(2);
redRule = irandom(2);
blackRule = irandom(2);

//Nut types
TL = irandom(4);
TM = irandom(4);
TR = irandom(4);
CL = irandom(4);
CM = irandom(4);
CR = irandom(4);
BL = irandom(4);
BM = irandom(4);
BR = irandom(4);

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

mapping_array = [];
k = 0;
for(i = 0; i < 3; i++){
	for(j = 0; j < 3; j++){
		mapping_array[i, j] = k;
		k++;
	}
}

Xarray = [Lhalf, halfX, Rhalf];
Yarray = [Thalf, halfY, Bhalf];
