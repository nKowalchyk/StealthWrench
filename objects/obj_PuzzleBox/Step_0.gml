


if left
{
	if((currentx - 1) >= 0){
		currentx = currentx - 1;
	}
	
}
if right
{
	if((currentx + 1) <= 2){
		currentx = currentx - 1;	
	}	
}
if up
{
	if((currenty - 1) >= 0){
		currentx = currentx - 1;	
	}	
}
if down
{
	if((currentx + 1) <= 2){
		currentx = currentx - 1;	
	}
}
if "Z"
{
	//show_debug_message("Rotate left, mapping array");
	//show_debug_message(mapping_array[currentx, currenty]);
	if(mapping_array[currentx, currenty] > 0){
		rotate[counting[currentx, currenty]] = -90;
		
		
	}
	
	
}
if "X"
{
	//rotate right
}
