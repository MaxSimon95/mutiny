for(var i=0; i<array_length_1d(global.crew)-1; i++)
{

	var relation_temp = irandom(10)
	if ((relation_temp<4)&&(irandom(100)>25)) relation_temp +=2
	if ((relation_temp>7)&&(irandom(100)>25)) relation_temp -=2
	
	//show_debug_message(global.crew[i].occupation)
	
	if((irandom(100)>40)&&(global.crew[i].aggressivity>6))
	{
		show_debug_message("zielperson aggressiv")
		relation_temp -= irandom(3) + global.crew[i].aggressivity / 5
	}
	
	if(irandom(100)>10)&&(global.crew[argument[0]].aggressivity > 6 ) 
	{
		show_debug_message("ausgangsperson aggressiv")
		relation_temp -= irandom(1) + global.crew[argument[0]].aggressivity / 5
	}
		/*
	if(irandom(100)>40) 
	{
		show_debug_message("eigene aggressivität abziehen")
		relation_temp -= global.crew[i].aggressivity / 2
	}
	*/
	//show_debug_message (relation_temp)
	
	if(relation_temp>10)relation_temp=10
	if(relation_temp<0)relation_temp=0
	
	global.crew[argument[0]].relationTo[i] = relation_temp
} 