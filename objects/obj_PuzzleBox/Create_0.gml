/// Randomize the puzzle
// You can write your code in this editor




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


//

slots = [];

for (i = 0; i<9; i++)
{
	 slots[i] = irandom(3);
}


Xarray = [Lhalf, halfX, Rhalf];
Yarray = [Thalf, halfY, Bhalf];
