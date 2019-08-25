/* return values:
1: success
-1: not possible, no valid person, 
*/

// MANDATORY STEPS

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

// select affected crewmember

affected = 1337

// output speech

speech= 1337