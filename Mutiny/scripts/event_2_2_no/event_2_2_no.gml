instance_destroy(instance_find(obj_text, 0))
global.current_crewmember.loyalty -= irandom(3)+1

if(global.current_crewmember.loyalty > 5)
{
	outputSpeech("My captain, it saddens me to have disappointed you. I will try harder next time. ")
}
else{
	if(global.current_crewmember.loyalty > 2)
	outputSpeech("A poor decision, my captain. This painting was marvelous. ")
	else 
	outputSpeech("You fool. I will make sure you regret this decision.")
}

make_standard_buttons_invisible()
button_go_on.visible=true