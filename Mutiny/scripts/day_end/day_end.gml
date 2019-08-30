
switch(global.daily_supply_consumption)
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

day_start()
