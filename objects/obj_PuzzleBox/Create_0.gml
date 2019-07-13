/// Randomize the puzzle
// You can write your code in this editor

areaWidth = room_width/2;
areaHeight = room_height/2;
areaX = 0;
areaY = 0;
borderWidth = 0.02

gameBoardX = areaX+(areaWidth*(0.30+borderWidth))
gameBoardY = areaY+(areaWidth*borderWidth)
gameBoardX2 = areaX+(areaWidth*(1-borderWidth))
gameBoardY2 = areaY+(areaHeight*(1-borderWidth))

slots = [];

for (i = 0; i<9; i++)
{
	slots[i] = irandom(2);
}