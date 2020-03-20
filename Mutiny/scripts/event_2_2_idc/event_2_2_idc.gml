instance_destroy(instance_find(obj_text, 0))
global.efficiency += (global.paintingQuality-5)/1.8
global.current_crewmember.loyalty -= 1

if(global.current_crewmember.loyalty < 5)
{
	outputSpeech("You don't know a thing about art, so that was to be expected.§ I will put up the painting now. ")
}
else{
	outputSpeech("I understand you're very busy, my captain.$ I will put the painting up then.")
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