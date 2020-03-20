instance_destroy(instance_find(obj_text, 0))
global.efficiency += (global.paintingQuality-5)/1.8
global.current_crewmember.loyalty += irandom(3)+1

if(global.current_crewmember.loyalty < 5)
{
	outputSpeech("Finally a sound decision! I will put it up there right now.")
}
else{
	outputSpeech("A great decision, as always, my captain. I will put it up immidietly.")
}

for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	{
		global.crew[i].relationTo[global.current_crewmember.crew_id] += (global.paintingQuality-5)/5	
	}


show_debug_message("painting_subject1_crewId and influence")
show_debug_message(global.painting_subject1_crewId)
show_debug_message(global.painting_subject1_Influence)

if(global.painting_subject1_crewId!=-1)
{
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	{
		global.crew[i].relationTo[global.crew[global.painting_subject1_crewId].crew_id] += global.painting_subject1_Influence
	}
	global.crew[global.painting_subject1_crewId].relationTo[global.current_crewmember.crew_id] += global.painting_subject1_Influence*2
}


make_standard_buttons_invisible()
button_go_on.visible=true