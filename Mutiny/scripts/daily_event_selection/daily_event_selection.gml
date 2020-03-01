// select events for current day

// assign base probability_score for each event
//show_debug_message("assign base probability_score")
show_debug_message("----- daily event selection -----")


for (var i=0;i < (array_length_1d(global.events)-1); i++)
{
	// base probablity_score
	global.events[i].probability_score = irandom(50)+50
	
	// lower probability score for recent events
	if(global.events[i].last_occurence_date != -1)
	{
		show_debug_message("event " + global.events[i].name + " happened " + string_format(global.current_date-global.events[i].last_occurence_date, 3, 0) + " days before")
		
		switch(global.current_date-global.events[i].last_occurence_date)
		{
		case 0: global.events[i].probability_score = 0; break;	
		case 1: global.events[i].probability_score -= 50; break;	
		case 2: global.events[i].probability_score -= 40; break;	
		case 3: global.events[i].probability_score -= 27; break;	
		case 4: global.events[i].probability_score -= 20; break;	
		case 5: global.events[i].probability_score -= 15; break;	
		case 6: global.events[i].probability_score -= 12; break;	
		case 7: global.events[i].probability_score -= 10; break;	
		case 8: global.events[i].probability_score -= 8; break;	
		default: global.events[i].probability_score -= 5; break;	
		}
	}
	else
	show_debug_message("event " + global.events[i].name + "never happened")
}

//conduct individual probability_score adjustments
global.events[0].probability_score = -9999    // meta temp event, should never execute!

// pick events for day
var p = 3+irandom(3)

repeat(p)
{
	event_temp = global.events[0]
	for(var i=1; i < (array_length_1d(global.events)-1); i++)
	{
		if(global.events[i].probability_score > event_temp.probability_score)
		{
			event_temp = global.events[i]
		}
		
	}
	ds_list_add(global.eventsToday,event_temp)
	event_temp.probability_score = 0
	event_temp.last_occurence_date=global.current_date
}

ds_list_shuffle(global.eventsToday);

show_debug_message("    today's events: ")
i=0
repeat (ds_list_size(global.eventsToday)-1)
{
show_debug_message(ds_list_find_value(global.eventsToday,i).name)	
i++
}

// individual probability_score adjustments