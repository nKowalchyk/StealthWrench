//changed


if left
{
	if((currentx - 1) >= 0){
		currentx--;
	}
	
}
if right
{
	if((currentx + 1) <= 2){
		currentx++;	
	}	
}
if up
{
	if((currenty - 1) >= 0){
		currenty--;	
	}	
}
if down
{
	if((currenty + 1) <= 2){
		currenty++;	
	}
}
if primary //rotate left
{
	//show_debug_message("Rotate left, mapping array");
	//show_debug_message(mapping_array[currentx, currenty]);
	if(mapping_array[currentx, currenty] > 0){
		rotate[counting[currentx, currenty]] = -90;
		currentboard[currentx, currenty] = -90;
		
	}
	
	
}
if secondary //rotate right
{
	
	if(mapping_array[currentx, currenty] > 0){
		rotate[counting[currentx, currenty]] = 90;
		currentboard[currentx, currenty] = 90;
	}
	
}





