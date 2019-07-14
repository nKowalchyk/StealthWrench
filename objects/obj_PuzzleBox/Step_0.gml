


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
	}
	
}
if secondary //rotate right
{
	
	if(mapping_array[currentx, currenty] > 0){
		rotate[counting[currentx, currenty]] = 90;			
	}
	
}


/*
for(i=0;i<2;i++;){
			for(j=0;j<2;j++){
				if( ( (mapping_array[currentx, currenty] - 1) == 1) && (colorRule[i] == 1))
				{
					if(j == 1)
					rotate[counting[currentx, currenty]] = -90;
				}
				else if( ( (mapping_array[currentx, currenty] - 1) == i) && ( (colorRule[i] == 0) || (colorRule[i] == 2)))
				{
					//raise alarm and leave game
				}
			}
		}
*/