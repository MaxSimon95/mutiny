instance_destroy(instance_find(obj_text, 0))
global.efficiency += 5
global.affected.loyalty -= 4
global.current_crewmember.loyalty -= 2

show_debug_message(global.current_crewmember.aggressivity)
if (global.current_crewmember.aggressivity > 5)
{
	outputSpeech("Well then. I'll suppose he will be punished.")
	global.efficiency += 5
	global.affected.loyalty -= 3
}
else
{
	outputSpeech("Well then. I suppose we'll let it slip this time.")
	global.efficiency -= 2
	global.affected.loyalty += 1
}