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
	case "Have him whipped.": break;
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
*/

switch(argument[0])
{
case "Fuck off.": 
	if((global.current_crewmember.loyalty < 6)&&(global.current_crewmember.cunning < 9))
	outputSpeech("_How dare you?§ ^This is uncalled for.")
	else
	outputSpeech("...§ ...§ As you wish.")
	global.current_crewmember.loyalty -= irandom(1)
	global.efficiency -= 5
	global.affected.loyalty += irandom(1)
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
	global.current_crewmember.loyalty += 2+irandom(1)
	return(0)
	}
	if(global.current_crewmember.relationTo[global.affected.crew_id] < 3)&&(global.current_crewmember.loyalty>4)
	{
	outputSpeech("If you really think this helps...")
	global.current_crewmember.loyalty -= irandom(1)
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
			kill_crewmember(global.affected,"internal bleeding")
			
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
		global.affected.healthyness -= irandom(2)+1
		show_debug_message("sickness!")
	}
	global.current_crewmember.loyalty += irandom(1)+1
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
	global.current_crewmember.loyalty-=irandom(1)
	global.affected.loyalty -=irandom(1)+1
	global.affected.healthyness -= irandom(1)+1
	return(0)
	}

	outputSpeech("I won't go easy on him.")
	global.affected.loyalty -=irandom(2)+1
	global.affected.healthyness -= irandom(2)+1

	break;

case "Promise him extra pay.": 
	outputSpeech("I...§ don't understand why.§ But I will see to it.")
	global.affected.loyalty += 3
	global.current_crewmember.loyalty -= irandom(1)
	global.efficiency -= irandom(9)+6
	break;
	
case "Scold him in private.":
if(global.current_crewmember.aggressivity >=8)||(global.current_crewmember.relationTo[global.affected.crew_id] < 4)
{
	outputSpeech("Very well.§ Though I have to note that he will likely do it again, with a lenient punishment such as this. ")
	global.affected.loyalty -= irandom(1)
global.efficiency += irandom(2)
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(1)
return(0)
}
outputSpeech("Very well.")
global.affected.loyalty -= irandom(1)
global.efficiency += irandom(2)
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(1)
break;

case "Scold him before the entire crew.":
if(global.current_crewmember.aggressivity >=9)||(global.current_crewmember.relationTo[global.affected.crew_id] < 3)
{
	outputSpeech("Very well.§ Though I fear more harsh measures will be necessary... ")
	global.affected.loyalty -= irandom(1)
global.efficiency += irandom(3)
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(2)
return(0)
}
outputSpeech("Very well.")
global.affected.loyalty -= irandom(2)
global.efficiency += irandom(3)
global.affected.relationTo[global.current_crewmember.crew_id]-=irandom(2)
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
	outputSpeech("Have you...§§ gone insane?§ I will carry out this order, but the admirality will hear from this.")
}

if(irandom(10)>global.affected.healthyness)
		{
			show_debug_message("death!")
			kill_crewmember(global.affected, "torture")
			
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
global.affected.loyalty -= 6

break;

case "Have him whipped.":
global.efficiency += 5
global.affected.loyalty -= 4
outputSpeech("...§ As you wish, it will be done.")

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
kill_crewmember(global.affected, "thrown off the ship")
break;
	
	case "Give him some extra booze.": 
	global.affected.loyalty += irandom(2)
	if(global.current_crewmember.efficiency > 5) 
	{
		global.current_crewmember.loyalty -= irandom(2)
		global.current_crewmember.relationTo[global.affected.crew_id] -= irandom(1)
		
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
	global.affected.loyalty += irandom(1)
	if(global.current_crewmember.efficiency > 6) 
	{
		global.current_crewmember.loyalty -= irandom(1)
		global.current_crewmember.relationTo[global.affected.crew_id] -= irandom(1)
		
	}
	global.efficiency -= irandom(3)+1
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
		outputSpeech("Very well.§ I'll have everything arranged and the crew assembled.")
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
	
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	global.crew[i].loyalty -= 1 + global.crew[i].relationTo[global.affected.crew_id]/2
	global.efficiency +=5+irandom(8)
	kill_crewmember(global.affected, "execution by shooting")
	break;
	
	case "Have him shot by a cannon.": 
	if(global.current_crewmember.relationTo[global.affected.crew_id]< 2) {
		outputSpeech("Very well.§ I'll have the cannon prepared. Let's hope the ship doesn't get damaged. ")
	}
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 8)
	{
	outputSpeech("Captain...§ I hope you have a good reason for this order.§^ I'm worried about your mental health. ")
	}
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 10)
	{
	outputSpeech("^Surely you must be joking!§ Oh..§ you're serious.§ I regret having enlisted on this ship. ")
	}
	else
	{
	outputSpeech("...§ ...§ You will regret the day you gave this mad order. ")
	}
	
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	global.crew[i].loyalty -= irandom(4) + global.crew[i].relationTo[global.affected.crew_id]/2
	global.efficiency +=5+irandom(8)
	kill_crewmember(global.affected, "execution by cannon")
	break;
	
	case "Have him scrub the deck every day.": 
	switch(irandom(3))
	{
		case 1: outputSpeech("I'll inform the " + global.affected.occupation + " of his new duties. ") break;
		case 2: outputSpeech("I'll see to it, captain. ") break;
		case 3: outputSpeech("Alright, sir. ") break;
	}
	global.efficiency +=2+irandom(2)
	global.affected.loyalty -= irandom(1)
	
	break;
	
		case "Have him hanged.": 
	if(global.current_crewmember.relationTo[global.affected.crew_id]< 2) {
		outputSpeech("Very well.§ I'll have someone fetch some rope and a stool.")
	}
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 8)
	{
	outputSpeech("Captain...§ I fear this might be going too far.§^ But an order is an order.")
	}
	else if(global.current_crewmember.relationTo[global.affected.crew_id]< 10)
	{
	outputSpeech("This is terrible... A disturbing joke, at least I would have preferred it to be. But orders are orders.")
	}
	else
	{
	outputSpeech("You might have sealed your fate with this...§§ order. ")
	}
	
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	global.crew[i].loyalty -= 1 + global.crew[i].relationTo[global.affected.crew_id]/2
	global.efficiency +=5+irandom(8)
	kill_crewmember(global.affected, "execution by hanging")
	break;
	
	case "Kill him. The kitchen needs more meat.": 
	switch(irandom(5))
	{
	case 0: outputSpeech("Lord have mercy... This order frightens me right to my bones.") break;
	case 1: outputSpeech("Dear god...") break;
	case 2: outputSpeech("This is...§ I have no words to describe this order.") break;
	case 3: outputSpeech("^Jesus Christ!§ This order is...§ it's...§ ") break;
	case 4: outputSpeech("May god have mercy with our souls.") break;
	case 5: outputSpeech("This order is going to haunt me in my nightmares.") break;
	}
	
	global.supplies += 60
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	global.crew[i].loyalty -= irandom(5)+2 + global.crew[i].relationTo[global.affected.crew_id]/2
	kill_crewmember(global.affected, "execution")
	break;
	
	case "Have the crew vote on what to do.": 
	var temp_relation=0
	var temp_i=0
	var temp_sanity=0
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	{
		if(global.crew[i].alive)
		{
		temp_relation += global.crew[i].relationTo[global.affected.crew_id]
		temp_sanity += global.crew[i].sanity
		temp_i++
		}
	}
	temp_relation = temp_relation / temp_i
	temp_sanity = temp_sanity / temp_i
	show_debug_message("temp relation")
	show_debug_message(temp_relation)
	show_debug_message("temp sanity")
	show_debug_message(temp_sanity)
	



	
	// voting animation.
	if(findCrewIdByOccupation("First Mate",0,true)!=-1) global.crew[findCrewIdByOccupation("First Mate",0,true)].loyalty -= irandom(2)-1
	if(findCrewIdByOccupation("Second Mate",0,true)!=-1) global.crew[findCrewIdByOccupation("Second Mate",0,true)].loyalty -= irandom(2)-1
	if(findCrewIdByOccupation("Third Mate",0,true)!=-1) global.crew[findCrewIdByOccupation("Third Mate",0,true)].loyalty -= irandom(2)-1
	if(findCrewIdByOccupation("Third Mate",0,true)!=-1) global.crew[findCrewIdByOccupation("Third Mate",0,true)].loyalty -= irandom(2)-1
	
	if(temp_sanity<3)
	{
		outputSpeech("The crew has decided to sacrifice " + global.affected.forename + " " + global.affected.surname + " to the great elder beings.")
		kill_crewmember(global.affected)
	}
	
	else if(temp_relation>4) 
	{
		if(global.current_crewmember.aggressivity>7)
		outputSpeech("Sadly...§ the crew has decided to give " + global.affected.forename + " " + global.affected.surname + " a second chance, and not punish him.")		
		else
		outputSpeech("The crew has decided to give " + global.affected.forename + " " + global.affected.surname + " a second chance, and not punish him.")		
		global.efficiency -= 4 + irandom(2)
	}
	
	else if(temp_relation>2) 
	{
		if(global.current_crewmember.aggressivity>7)
		outputSpeech("Thankfully the crew has decided to have " + global.affected.forename + " " + global.affected.surname + " whipped. ")		
		else
		outputSpeech("Thankfully the crew has decided to have " + global.affected.forename + " " + global.affected.surname + " whipped. ")		
		global.efficiency += 4 + irandom(2)
	}	
	
	else  
	{
		if(global.current_crewmember.relationTo[global.affected.crew_id]>5)
		outputSpeech("The crew...§ has decided...§ to have " + global.affected.forename + " " + global.affected.surname + " walk the plank. This is terrible...§ I'll have everything prepared.")	
		else
		outputSpeech("The crew has decided to have " + global.affected.forename + " " + global.affected.surname + " walk the plank. His death will make things run much smoother.")		
		global.efficiency += 7 + irandom(2)
		kill_crewmember(global.affected)
	}		
	break;
	
	case "Have the mates vote on what to do": 
	var temp_sanity=0
	var temp_i=0
	var temp_relation=0
	if(findCrewIdByOccupation("First Mate",0,true)!=-1) 
	{
		temp_sanity+=global.crew[findCrewIdByOccupation("First Mate",0,true)].sanity
		temp_relation+=global.crew[findCrewIdByOccupation("First Mate",0,true)].relationTo[global.affected.crew_id]
		temp_i++
		
	}
	if(findCrewIdByOccupation("Second Mate",0,true)!=-1) 
	{
		temp_sanity+=global.crew[findCrewIdByOccupation("Second Mate",0,true)].sanity
		temp_relation+=global.crew[findCrewIdByOccupation("Second Mate",0,true)].relationTo[global.affected.crew_id]
		temp_i++
	}
	if(findCrewIdByOccupation("Third Mate",0,true)!=-1) 
	{
		temp_sanity+=global.crew[findCrewIdByOccupation("Third Mate",0,true)].sanity
		temp_relation+=global.crew[findCrewIdByOccupation("Third Mate",0,true)].relationTo[global.affected.crew_id]
		temp_i++
	}
	if(findCrewIdByOccupation("Fourth Mate",0,true)!=-1)
	{
		temp_sanity+=global.crew[findCrewIdByOccupation("Fourth Mate",0,true)].sanity
		temp_relation+=global.crew[findCrewIdByOccupation("Fourth Mate",0,true)].relationTo[global.affected.crew_id]
		temp_i++
	}
	
	temp_relation = temp_relation / temp_i
	temp_sanity = temp_sanity / temp_i
		show_debug_message("temp relation")
	show_debug_message(temp_relation)
	show_debug_message("temp sanity")
	show_debug_message(temp_sanity)
	
	
	if(temp_sanity<9)
	{
		outputSpeech("We decided to sacrifice " + global.affected.forename + " " + global.affected.surname + " to the great elder beings.")
		kill_crewmember(global.affected)
	}
	
	else if(temp_relation>5.5) 
	{
		outputSpeech("We decided to spare " + global.affected.forename + " " + global.affected.surname + " from punishment.")		
		global.efficiency -= 4 + irandom(2)
	}
	
	else if(temp_relation>4) 
	{
		outputSpeech("We decided to strictly scold " + global.affected.forename + " " + global.affected.surname + " in private.§ I will see to this.")		
		global.efficiency += irandom(2)
	}	
	
	else if(temp_relation>2) 
	{
		if(global.current_crewmember.efficiency < 3)
		outputSpeech("We decided to have " + global.affected.forename + " " + global.affected.surname + " whipped.$ ^Whip!$ whip! ")	
		else
		outputSpeech("We decided to have " + global.affected.forename + " " + global.affected.surname + " whipped. ")		
		global.efficiency += 4 + irandom(2)
	}	
	
	else  
	{
		if(global.current_crewmember.aggressivity>8)
		outputSpeech("We decided to have that bloody fool shot. His death will make things run much smoother.")	
		else
		outputSpeech("We decided to have " + global.affected.forename + " " + global.affected.surname + " shot. His death will make things run much smoother.")		
		global.efficiency += 7 + irandom(2)
		kill_crewmember(global.affected)
	}		
	
	break;
	
	case "Everyone gets longer shifts now!": 
	if(global.efficiency<25)
	{
	switch(irandom(3))
		{
			case 1: outputSpeech("I will inform the crew... They won't like it, but it's necessary. ") break;
			case 2: outputSpeech("The crew won't like this. But what can we do, the crew is terribly inefficient nowadays")break;
			case 3: outputSpeech("Aye Captain.§ Considering the low efficiency on board right now this might have been the best order. ") break;
			case 0: outputSpeech("I see...§_ The crew won't be joyful...§ But at least we'll get some more seaman's work done this way. ")break;
		}
	return(0)
	}
	if((global.loyalty<25)&&(global.current_crewmember.loyalty>2.5))
	{
		switch(irandom(3))
		{
			case 1: outputSpeech("I will inform the crew...§ But do you think this is a good idea, Captain? § The crew morale is not good after all! ") break;
			case 2: outputSpeech("The crew won't like this. And this is reason for worry, after all the morale is not how I wish it was. ")break;
			case 3: outputSpeech("Aye Captain.§ Though I have to admit, considering the low morale on board right now this might not have been the best order. ") break;
			case 0: outputSpeech("I see...§_ The crew won't be joyful though...§ it rarely is these days. ")break;
		}
	return(0)
	}
	switch(irandom(3))
	{
			case 1: outputSpeech("Very well. The crew won't like this.") break;
			case 2: outputSpeech("The crew won't like this. ")break;
			case 3: outputSpeech("Aye Captain.§ The crew won't exactly like this.") break;
			case 0: outputSpeech("I see...§_ The crew won't be joyful.")break;
	}
	
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	{
		global.crew[i].loyalty -= irandom(1)+1
	}
	global.efficiency += 9+irandom(2)
	
	break;
	
	case "Organize a small party.": 
	
	switch(irandom(3))
	{
			case 1: outputSpeech("Very well. The crew will like this.") break;
			case 2: outputSpeech("I don't...§ Well then.§ I will see to it. ")break;
			case 3: outputSpeech("Aye Captain.§ You surely have your reasons.") break;
			case 0: outputSpeech("I see...§_ Very well then. A party it is.")break;
	}
	
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	{
		global.crew[i].loyalty += irandom(1)
		if(global.crew[i].alive) global.supplies -= 12
	}
	
	global.efficiency -= 3+irandom(3) 
	break;
	
	case "Organize a great party.": 
	
	switch(irandom(3))
	{
			case 1: outputSpeech("Very well. I am looking forward to it.") break;
			case 2: outputSpeech("I don't...§ Well then.§ I will see to organizing everything. ")break;
			case 3: outputSpeech("Aye Captain.§ You surely have your reasons.") break;
			case 0: outputSpeech("I see...§_ Very well then. A great party it is.")break;
	}
	
	for(var i=0; i<array_length_1d(global.crew)-1; i++;)
	{
		if(global.crew[i].alive) global.supplies -= 36
		global.crew[i].loyalty += irandom(3) 
	}
	
	global.efficiency -= 7+irandom(11)
	break;
	
case "Reduce everybody's rations.": 

switch(irandom(3))
	{
			case 1: outputSpeech("I will see to it.") break;
			case 2: outputSpeech("Aye, Captain. ")break;
			case 3: outputSpeech("Aye Captain.§ You surely thought this through.") break;
			case 0: outputSpeech("Yes, it will be done.")break;
	}

if(global.daily_supply_consumption>=-6)global.daily_supply_consumption--

break;

case "Increase everybody's rations.": 

switch(irandom(3))
	{
			case 0: outputSpeech("Hopefully our supplies won't run out. ") break;
			case 1: outputSpeech("This will boost the morale!")break;
			case 2: outputSpeech("I'll see to this immidietly.") break;
			case 3: outputSpeech("Aye Captain. I will see to it. ")break;
	}

if(global.daily_supply_consumption<=7)global.daily_supply_consumption++

break;
	
default:
	outputSpeech("^This has =not been implemented yet,_ my Captain.")
	break;
}