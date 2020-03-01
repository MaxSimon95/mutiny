//global.expected_out_of_supplies_date=global.current_date + global.supplies / (global.daily_supply_consumption_subtrahend*global.crewsize)
show_debug_message("DAY END")
if((global.daily_supply_consumption)>7) global.daily_supply_consumption=7
if((global.daily_supply_consumption)<-6) global.daily_supply_consumption=-6

for(var i=0; i<array_length_1d(global.crew)-1; i++)
{
	if(global.crew[i].alive)
	{
		switch(global.daily_supply_consumption) 
		{
		case 0: 
		global.daily_supply_consumption_subtrahend = 12
		break;			// "standard"
		
		case -1: 
		global.daily_supply_consumption_subtrahend = 9 
		if (irandom(100)>92) global.crew[i].loyalty -= 1
		break;			// "three quarters"
		
		case -2: 
		global.daily_supply_consumption_subtrahend = 6 
		if (irandom(100)>85) global.crew[i].loyalty -= 1
		break;			// "half"
		
		case -3: 
		global.daily_supply_consumption_subtrahend = 4 
		if (irandom(100)>50) global.crew[i].loyalty -= 1
		break;			// "third"
		
		case -4: 
		global.daily_supply_consumption_subtrahend = 3 
		global.crew[i].loyalty -= irandom(2)
		break;			// "quarter"
		
		case -5: 
		global.daily_supply_consumption_subtrahend = 2 
		global.crew[i].loyalty -= irandom(3)
		break;			// sixth
		
		case -6: 
		global.daily_supply_consumption_subtrahend = 1
		global.crew[i].loyalty -= irandom(3)+1		
		break;			// one twelveth
		
		case -7: 
		global.daily_supply_consumption_subtrahend = 0.01 
		global.crew[i].loyalty -= irandom(4)+1	
		break;
		
		case 1: 
		global.daily_supply_consumption_subtrahend = 18 
		if (irandom(100)>90) global.crew[i].loyalty += 1
		break;			// "oneandahalf"
		
		case 2: 
		global.daily_supply_consumption_subtrahend = 24 
		if (irandom(100)>65) global.crew[i].loyalty += 1
		break;			// "double"
		
		case 3: 
		global.daily_supply_consumption_subtrahend = 36 
		if (irandom(100)>45) global.crew[i].loyalty += 1
		break; 			// "triple"
		
		case 4:  
		global.daily_supply_consumption_subtrahend = 48 
		if (irandom(100)>35) global.crew[i].loyalty += 1
		break;			// quadrupel
		
		case 5:  
		global.daily_supply_consumption_subtrahend = 60 
		if (irandom(100)>30) global.crew[i].loyalty += 1
		break;			// quintupel
		
		case 6: 
		global.daily_supply_consumption_subtrahend = 84 
		if (irandom(100)>27) global.crew[i].loyalty += 1
		break;			// eightfold
		
		case 7: 
		global.daily_supply_consumption_subtrahend = 120 
		if (irandom(100)>25) global.crew[i].loyalty += 1
		break;
		}
		
		global.supplies -= global.daily_supply_consumption_subtrahend
	}
	
}


//show_debug_message(global.known_supplies)

global.eventsToday = global.eventsNextDay
global.eventsNextDay = global.eventsIn2Day
global.eventsIn2Day = global.eventsIn3Day
global.eventsIn3Day = global.eventsIn4Day
global.eventsIn4Day = ds_list_create();

day_start()
