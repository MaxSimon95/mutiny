// argument[0] = id, argument[1] = name, 2 = according event start script

var new_event= instance_create_layer(0, 0, 1, event);
with (new_event)
    {
	name = argument[1]
	active = false
	implemented = false
	last_occurence_date = -1
	assigned_script = argument[2]
	probability_score = 0
    }
global.events[argument[0]] = new_event 
show_debug_message(global.events[argument[0]].name)