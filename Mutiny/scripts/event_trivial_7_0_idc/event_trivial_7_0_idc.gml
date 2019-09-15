instance_destroy(instance_find(obj_text, 0))
global.current_crewmember.loyalty -= 1


if (global.current_crewmember.efficiency < 4)
{
	outputSpeech("I don't care either.")
	global.efficiency -= 4
	
}
else
{
	if (global.current_crewmember.aggressivity > 5)
	{
	outputSpeech("Well then.§ I'll suppose he will be punished.")
	global.efficiency += 5
	global.affected.loyalty -= 3
	}
	else
	{
	outputSpeech("Well then.§ I suppose we'll let it slip this time.")
	global.efficiency -= 2
	global.affected.loyalty += 1
	}
}

make_standard_buttons_invisible()
button_go_on.visible=true