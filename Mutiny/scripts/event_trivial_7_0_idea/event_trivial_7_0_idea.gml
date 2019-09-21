// selected "other idea": argument[0]

/*
	case "Fuck off.": break;
	case "Praise him.": break;
	case "Give him a hug.": break;
	case "Punch him.": break;
	case "Promise him extra pay.": break;
	case "Scold him in private.":break;
	case "Scold him before the entire crew.":break;
	case "Lock him up beneath deck.":break;
	case "Have him tortured.": break;
	case "Throw him off the ship.": break;
case "Assign him a new Rank ...": break;
	case "Give him some extra booze.": break;
	case "Give him some extra food.": break;
	case "Have him shot.": break;
case "Have him shot by a cannon.": break;
case "Have him scrub the deck every day.": break;
case "Have him hanged.": break;
case "Kill him. The kitchen needs more meat.": break;
case "Have the crew vote on what to do.": break;
case "Have the mates vote on what to do": break;
case "Everyone gets longer shifts now!": break;
case "Organize a small party.": break;
case "Organize a great party.": break;
case "Reduce everybody's rations.": break;
case "Increase everybody's rations.": break;
case "Double everybody's rations.": break;
*/

switch(argument[0])
{
case "Fuck off.": 
	if((global.current_crewmember.loyalty < 6)&&(global.current_crewmember.cunning < 9))
	outputSpeech("_How dare you?§ ^This is uncalled for.")
	else
	outputSpeech("...§ ...§ As you wish.")
	global.current_crewmember.loyalty -= irandom(2)+2
	global.efficiency -= 5
	global.affected.loyalty += irandom(2)-1
break;

case "Praise him.": 
	if(global.current_crewmember.relationTo[global.affected.crew_id] < 7)
	{
	outputSpeech("What? This is a mistake. I hope you know what you're doing.")
	global.current_crewmember.loyalty -= 1
	}
	else
	{
	outputSpeech("I knew you would make a great decision.")
	}

break;

case "Give him a hug.": 
	global.efficiency -= 5
	if(global.current_crewmember.relationTo[global.affected.crew_id] == 10)
	{
	outputSpeech("I've...§^ been wanting to do this for a long time. Thank you.")
	global.current_crewmember.loyalty += 2+irandom(2)
	return(0)
	}
	if(global.current_crewmember.relationTo[global.affected.crew_id] < 3)&&(global.current_crewmember.loyalty>4)
	{
	outputSpeech("If you really think this helps...")
	global.current_crewmember.loyalty -= irandom(2)-1
	return(0)
	}

	if(global.current_crewmember.cunning > 5)
	{
	outputSpeech("Very well.§_ An order is an order.")
	return(0)
	}

	outputSpeech("An idiotic order, but an order none the less.")

break;

case "Punch him.":

	if(global.current_crewmember.aggressivity==10)
	{
	if(global.current_crewmember.relationTo[global.affected.crew_id] <= 2)
	{
		outputSpeech("I'll make sure he won't forget this day.")
		global.affected.loyalty-=4
		if(irandom(10)>global.affected.healthyness)
		{
			show_debug_message("death!")
			kill_crewmember(global.affected)
			
		}
		else
		{
			global.affected.healthyness -= irandom(3)
			show_debug_message("sickness!")
			infect_crewmember(global.affected,"broken_bones")
		}
		return(0)
	}
	
	if(irandom(10)>global.affected.healthyness) 
	{
		global.affected.healthyness -= irandom(3)
		show_debug_message("sickness!")
	}
	global.current_crewmember.loyalty += irandom(2)
	outputSpeech("It will be done.")
	return(0)
	
	
	}

	if((global.current_crewmember.relationTo[global.affected.crew_id] > 8)||(global.current_crewmember.aggressivity<3))
	{
	outputSpeech("I will gently touch him with my fist.§^ He is dear to me.")
	global.current_crewmember.loyalty -= 1
	global.affected.loyalty -=1
	global.efficiency +=1
	return(0)
	}
	
	if(global.current_crewmember.relationTo[global.affected.crew_id] > 4)
	{
	outputSpeech("I'll do what must be done.")
	global.current_crewmember.loyalty-=irandom(2)-1
	global.affected.loyalty -=irandom(2)
	global.affected.healthyness -= irandom(2)
	return(0)
	}

	outputSpeech("I won't go easy on him.")
	global.affected.loyalty -=irandom(3)
	global.affected.healthyness -= irandom(3)

	break;

case "Promise him extra pay.": 
	outputSpeech("I...§ don't understand why.§ But I will see to it.")
	global.affected.loyalty += 3
	global.current_crewmember.loyalty -= irandom(2)-1
	global.efficiency -= irandom(10)+5
	break;
	
case "Scold him in private.":
if(global.current_crewmember.aggressivity >=8)||(global.current_crewmember.relationTo[global.affected.crew_id] < 4)
{
	outputSpeech("Very well.§ Though I have to note that he will likely do it again, with a lenient punishment such as this. ")
	global.affected.loyalty -= irandom(2)-1
global.efficiency += irandom(3)-1
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(2)-1
return(0)
}
outputSpeech("Very well.")
global.affected.loyalty -= irandom(2)-1
global.efficiency += irandom(3)-1
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(2)-1
break;

case "Scold him before the entire crew.":
if(global.current_crewmember.aggressivity >=9)||(global.current_crewmember.relationTo[global.affected.crew_id] < 3)
{
	outputSpeech("Very well.§ Though I fear more harsh measures will be necessary... ")
	global.affected.loyalty -= irandom(2)-1
global.efficiency += irandom(4)-1
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(3)-1
return(0)
}
outputSpeech("Very well.")
global.affected.loyalty -= irandom(3)-1
global.efficiency += irandom(4)-1
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(3)-1
break;

case "Lock him up beneath deck.":
global.affected.loyalty -= irandom(2)+2
global.efficiency += irandom(2)
arrest_crewmember(global.affected)

if(global.affected.relationTo[global.current_crewmember.crew_id]> 5)
outputSpeech("A harsh punishment.§ I will see it through.")
else
outputSpeech("Very well.§ _This will teach him a lesson.")
break;

case "Have him tortured.": 
if(global.affected.relationTo[global.current_crewmember.crew_id]< 2)
{
	outputSpeech("This is...§ cruel. But necessary.§ I will see the order through.")
	
}
else
{
	outputSpeech("Have you...§§ gone insane?§ I will carry out this order, but the admirality will here from this.")
}

if(irandom(10)>global.affected.healthyness)
		{
			show_debug_message("death!")
			kill_crewmember(global.affected)
			
		}
		else
		{
			global.affected.healthyness -= irandom(3)
			show_debug_message("sickness!")	
			infect_crewmember(global.affected, "infection")
		}

//global.current_crewmember.loyalty -= irandom(2)-1

for(var i=0; i<array_length_1d(global.crew)-1; i++;)
global.crew[i].loyalty -= irandom(3) + global.crew[i].relationTo[global.affected.crew_id]/4
global.affected.loyalty -= 2

break;

case "Throw him off the ship.": 
if(global.affected.relationTo[global.current_crewmember.crew_id]< 2)
{
	outputSpeech("The crew won't like this...§§ approach to captainship.")
	
}
else
{
	outputSpeech("This is...§ unexpected.§ I pray to god that you have a good reason for this barbaric order.§")
}

//global.current_crewmember.loyalty -= irandom(2)-1

for(var i=0; i<array_length_1d(global.crew)-1; i++;)
global.crew[i].loyalty -= irandom(3) + global.crew[i].relationTo[global.affected.crew_id]/2
global.affected.loyalty -= 2

break;
	
	case "Give him some extra booze.": 
	global.affected.loyalty += irandom(2)
	if(global.current_crewmember.efficiency > 5) 
	{
		global.current_crewmember.loyalty -= irandom(2)
		global.current_crewmember.relationTo[global.affected.crew_id] -= irandom(2)-1
		
	}
	global.efficiency -= irandom(5)+5
	global.supplies -= 50
	
	if(global.current_crewmember.relationTo[global.affected.crew_id]< 2) 
	outputSpeech("Good. I hope you're trying to poison him this way...§ foor good.§ The crew would be better off without that fool.")
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 8)
	outputSpeech("Are you serious?§ I hope you have a good reason for this order.")
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 10)
	outputSpeech("Surprising... But I will see to it.")
	else
	outputSpeech("Fair enough, Captain.")
	
	break;

		case "Give him some extra food.": 
	global.affected.loyalty += irandom(2)-1
	if(global.current_crewmember.efficiency > 6) 
	{
		global.current_crewmember.loyalty -= irandom(2)-1
		global.current_crewmember.relationTo[global.affected.crew_id] -= irandom(2)-1
		
	}
	global.efficiency -= irandom(4)
	global.supplies -= 25
	
	if(global.current_crewmember.relationTo[global.affected.crew_id]< 2) 
	outputSpeech("Alright.§§ Here's hoping he'll choke on it. ")
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 8)
	outputSpeech("I assume you have some sort of reasoning behind this. ")
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 10)
	outputSpeech("Surprising... But I will see to it.")
	else
	outputSpeech("Fair enough, Captain.")
	
	break;
	
	case "Have him shot.": 
	if(global.current_crewmember.relationTo[global.affected.crew_id]< 2) {
		outputSpeech("Very well.§ I'll have everything arranged to carry out the order.")
	}
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 8)
	{
	outputSpeech("Captain...§ I hope you have a good reason for this.")
	}
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 10)
	{
	outputSpeech("Surely you must be joking!§ Ha.§§ Ha Ha.§ Wait, you're serious? This order is against eveything I believe in")
	}
	else
	{
	outputSpeech("...§ ...§ You will regret the day you gave this order.")
	}
	break;
	
default:
	outputSpeech("^This has =not been implemented yet,_ my Captain.")
	break;
}