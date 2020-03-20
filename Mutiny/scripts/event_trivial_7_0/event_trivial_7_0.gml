//global.events_trivial[7]="other_crew_member_drunk"

// MANDATORY STEPS
show_debug_message("in script execution")
//determine and order suitable_speakers

i=0

j=0
desiredOccupation="First Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{

	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	//show_debug_message(global.crew[suitable_speakers[i]].occupation)
	j++
	i++
}

j=0
desiredOccupation="Second Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Third Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Fourth Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Boatswain"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Boatswain's Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Helmsman"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Gunner"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Surgeon"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Gunner's Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
{
	suitable_speakers[i]=findCrewIdByOccupation(desiredOccupation,j,true)
	j++
	i++
}

j=0
desiredOccupation="Surgeon's Mate"
while((findCrewIdByOccupation(desiredOccupation,j,true)!=-1)&&(!global.crew[findCrewIdByOccupation(desiredOccupation,j,true)].arrested))
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

k=0
affected = global.crew[selectRandomCrewId(true)]



while(affected == global.current_crewmember)
||(affected.occupation == "Captain")
||(affected.occupation == "Passenger")
||(affected.arrested)
{
	affected = global.crew[selectRandomCrewId(true)]
	k++
	if( k == 30 )
	show_debug_message("k")
	show_debug_message(k)
}
global.affected = affected

show_debug_message("global.affected")
	show_debug_message(global.affected)
// output speech

speech_bubble.visible = true
speech="^Capt=ain! §" 

if(global.current_crewmember.relationTo[affected.crew_id] == 10)
{
	speech+= "Even great crewmembers can _make an error...§ "	
}
speech+= affected.occupation + " " + affected.forename + " " + affected.surname +", "
if(global.current_crewmember.relationTo[affected.crew_id] == 10)
speech+= "one of the^ very best =men we have...§ "

else if((global.current_crewmember.relationTo[affected.crew_id] > 6)&&(affected.efficiency > 8))
speech+= "whom I consider an outstanding =" + affected.occupation + "...§ "

else if((global.current_crewmember.relationTo[affected.crew_id] > 6)&&(affected.efficiency > 4))
speech+= "whom I consider overall reliable... §"

else if((global.current_crewmember.relationTo[affected.crew_id] > 6)&&(affected.efficiency <= 4))
speech+= "who may not be the ^most =talented " + affected.occupation + ", but still pulls his weight... §"

else if((global.current_crewmember.relationTo[affected.crew_id] <= 3)&&(affected.extraversion > 7))
speech+= "you know the guy...§ he _always =keeps on going on about how he's ^most =talented " + affected.occupation + " the seas have ever witnessed... §"

else 
{
 var p = irandom(7)
 
 switch(p)
 {
	 case 1: speech+= "that annoying rat... §" break;
 case 2: speech+= "that waste of supplies... §" break;
 case 3: speech+= "that dog... §" break;
 case 4: speech+= "that layabout... §" break;
 case 5: speech+= "that sleezy imp... §" break;
 case 6: speech+= "that fish head... §" break;
 case 7: speech+= "that fool... §" break; 
 }


}

if(global.current_crewmember.relationTo[affected.crew_id] > 7)
speech+= "Sadly he had a little misstep conceirning alcohol. He drank a lot of it, and now he's shamefully drunk on duty. "

else if(global.current_crewmember.relationTo[affected.crew_id] > 4)
speech+= "He drank way too much alcohol...§ On duty none the less! " 

else if(global.current_crewmember.aggressivity > 7)
speech+= "He got bloody drunk! On duty!§ This makes me so angry!§ " 

else 
speech+= "He's bloody drunk on duty, and now he's endangering himself _and ^others.§ "

if(global.current_crewmember.relationTo[affected.crew_id] > 5)
speech+= "Should we have him whipped? "

else
speech+= "Should we teach him a lesson by whipping?"

//speech[1]="I hate to say this, but..." 
//speech[2]=affected.occupation + " " + affected.forename + " " + affected.surname 
//speech[3]="... is bloody drunk on duty! He's endangering himself and others."
//speech[4]="I suggest having him whipped. Is that alright with you, sir?" 

outputSpeech(speech)
make_standard_buttons_visible()

