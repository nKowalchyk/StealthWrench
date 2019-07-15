
if tertiary
{
	count = 0;
	show_debug_message("Current Board");
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			show_debug_message(currentboard[i, j]);	
		}
	}
	show_debug_message("Answer Board");
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			show_debug_message(answerboard[i, j]);	
		}
	}
	for(i = 0; i < 3; i++){
		for(j = 0; j < 3; j++){
			//show_debug_message(currentboard[i, j]);
			//show_debug_message(answerboard[i, j]);
		
			if(currentboard[i, j] == answerboard[i, j]){
				count++;
				show_debug_message("GOT ONE");
			}else if(currentboard[i, j] == 0){
				show_debug_message("Still more to find");
			}else if(currentboard[i, j] != answerboard[i, j]){
				show_debug_message("YOU LOSE");
			}
			
			if(count == 9){
			show_debug_message("A WINNER IS YOU");	
			}
	
		}	
	}
	show_debug_message(count);
}
