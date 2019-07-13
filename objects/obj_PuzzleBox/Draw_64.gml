/// Drawing the board area
// You can write your code in this editor



draw_set_color(c_gray)
draw_rectangle(areaX, areaY, areaX+areaWidth, areaY+areaHeight, 0)
draw_set_color(c_ltgray)

//Rules Board
draw_rectangle(areaX+(areaWidth*borderWidth), areaY+(areaWidth*borderWidth), areaX+(areaWidth*0.3), areaY+(areaHeight*(1-borderWidth)), 0)


//Game Board
draw_rectangle(gameBoardX, gameBoardY, gameBoardX2, gameBoardY2, 0)

