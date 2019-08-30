//global.events_trivial[7]="other_crew_member_drunk"

// MANDATORY STEPS
show_debug_message("in script execution")
//determine and order suitable_speakers

i=0

j=0
desiredOccupation="First Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	//show_debug_message(global.crew[suitable_speakers[i]].occupation)
	j++
	i++
}

j=0
desiredOccupation="Second Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Third Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Fourth Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Boatswain"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Boatswain's Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Helmsman"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Gunner"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Surgeon"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Gunner's Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Surgeon's Mate"
while(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

if(array_length_1d(suitable_speakers)==0) return -1

//show_debug_message(findCrewIdByOccupation("First Mate",0,true))
//show_debug_message(findCrewIdByOccupation("Steward",0,true))
//show_debug_message(findCrewIdByOccupation("Steward",3,false))


//select speaker
if(array_length_1d(suitable_speakers)>=3)
{
	if (global.crew[suitable_speakers[1]].efficiency > global.crew[suitable_speakers[0]].efficiency+3)
		if (global.crew[suitable_speakers[2]].efficiency > global.crew[suitable_speakers[1]].efficiency+2)
		speaker = global.crew[suitable_speakers[2]]
		else
		speaker = global.crew[suitable_speakers[1]]
	else
	speaker = global.crew[suitable_speakers[0]]
	
}
if(array_length_1d(suitable_speakers)==2)
{
	if (global.crew[suitable_speakers[1]].efficiency > global.crew[suitable_speakers[0]].efficiency+3)
	speaker = global.crew[suitable_speakers[1]]
	else
	speaker = global.crew[suitable_speakers[0]]
}
if(array_length_1d(suitable_speakers)==1)
{
	speaker = global.crew[suitable_speakers[0]]
}
global.current_crewmember = speaker
global.crewmember_visible=true
update_person_visuals()

// select affected crewmember

affected = global.crew[selectRandomCrewId(true)]
global.affected = affected

// output speech

speech_bubble.visible = true
speech=
"Captain! " + 
"I hate to say this, but... " +
affected.occupation + " " + affected.forename + " " + affected.surname + 
" ... is bloody drunk on duty! He's endangering himself and others. " +
"Should we have him whipped as punishment?" 

//speech[1]="I hate to say this, but..." 
//speech[2]=affected.occupation + " " + affected.forename + " " + affected.surname 
//speech[3]="... is bloody drunk on duty! He's endangering himself and others."
//speech[4]="I suggest having him whipped. Is that alright with you, sir?" 

outputSpeech(speech)
make_standard_buttons_visible()

