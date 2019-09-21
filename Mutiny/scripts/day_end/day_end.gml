
switch(global.daily_supply_consumption) 
// needs to be reworked. only alive crew eats, and base value for daily consumption is 12 per eater
{
case "standard": global.supplies -= 20 break; 
case "half": global.supplies -= 10 break; 
case "third": global.supplies -= 7 break; 
case "quarter": global.supplies -= 5 break; 
case "oneandahalf": global.supplies -= 30 break; 
case "double": global.supplies -= 40 break; 
case "triple": global.supplies -= 60 break; 		
}

//show_debug_message(global.known_supplies)

global.eventsToday = global.eventsNextDay
global.eventsNextDay = global.eventsIn2Day
global.eventsIn2Day = global.eventsIn3Day
global.eventsIn3Day = global.eventsIn4Day
global.eventsIn4Day = ds_list_create();

day_start()
