// argument[0] = Occupation
// argument[1] = the howmany'th person of that occupation should be retrieved, starting with 0
// argument[2] = desired Liveliness (bool)

var i;
var resultsToPassUp = argument[1]
var desiredLiveliness = argument[2]
for(i=0; i<array_length_1d(global.crew)-1; i++){
    if((global.crew[i].alive == desiredLiveliness)&&(global.crew[i].occupation==argument[0]))
	{
		if(resultsToPassUp==0)
		{
			return i;
		}
		else{
			resultsToPassUp--
		}
	}
	//else //show_debug_message(i)
}
return -1;