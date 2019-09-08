selected_crewmember=argument[0]

show_debug_message(global.current_crewmember.relationTo[selected_crewmember.crew_id])
show_debug_message(selected_crewmember.efficiency)

var speech_temp
if(global.current_crewmember.relationTo[selected_crewmember.crew_id] < 3)
{
	speech_temp = selected_crewmember.forename + " " + selected_crewmember.surname + "? That sad excuse for a " 
	speech_temp += selected_crewmember.occupation + "?§ I hope you won't regret this..."
	global.current_crewmember.loyalty -= 1
}
if(global.current_crewmember.relationTo[selected_crewmember.crew_id] < 8)&&
(global.current_crewmember.relationTo[selected_crewmember.crew_id] >= 3)&&
(selected_crewmember.efficiency<8)
{
	speech_temp = "Very well, Sir."
}

if(global.current_crewmember.relationTo[selected_crewmember.crew_id] >= 8)||
(selected_crewmember.efficiency>=8)
{
	speech_temp = "An excellent choice, Sir."
}
outputSpeech(speech_temp)

if(selected_crewmember.relationTo[global.affected.crew_id]<1)
{
	
	global.efficiency += irandom(15)
	global.loyalty -= irandom(10)
	global.affected.relationTo[selected_crewmember.crew_id] -= irandom(3)+3
}

if(selected_crewmember.occupation != "First Mate")&&
	(selected_crewmember.occupation != "Second Mate")&&
	(selected_crewmember.occupation != "Third Mate")&&
	(selected_crewmember.occupation != "Fourth Mate")
	{
	global.efficiency	 -= irandom(5)+4
	if(global.crew[findCrewIdByOccupation("First Mate", 0, true)]!=-1) global.crew[findCrewIdByOccupation("First Mate", 0, true)].loyalty -= irandom(2)-1
	if(global.crew[findCrewIdByOccupation("First Mate", 0, true)]!=-1) global.crew[findCrewIdByOccupation("Second Mate", 0,true)].loyalty -= irandom(2)-1
	if(global.crew[findCrewIdByOccupation("First Mate", 0, true)]!=-1) global.crew[findCrewIdByOccupation("Third Mate", 0,true)].loyalty -= irandom(2)-1
	if(global.crew[findCrewIdByOccupation("First Mate", 0, true)]!=-1) global.crew[findCrewIdByOccupation("Fourth Mate", 0,true)].loyalty -= irandom(2)-1
	}

/*
if((selected_crewmember.loyalty<=3&&selected_crewmember.aggressivity>=7)||((selected_crewmember.aggressivity>=9)))
global.loyalty -= 13 + irandom(4)

if(selected_crewmember.efficiency<=5 && selected_crewmember.efficiency<=3) 
{
	global.efficiency -= 5
	global.supplies -= 5
}
*/