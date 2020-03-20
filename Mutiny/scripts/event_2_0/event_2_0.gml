

// MANDATORY STEPS
show_debug_message("in script execution")
//determine and order suitable_speakers

i=0

j=0
desiredOccupation="Artist"
if(findCrewIdByOccupation(desiredOccupation,j,true)!=-1)
	suitable_speakers[0]=findCrewIdByOccupation(desiredOccupation,j,true)

else return(-1)

//show_debug_message(findCrewIdByOccupation("First Mate",0,true))
//show_debug_message(findCrewIdByOccupation("Steward",0,true))
//show_debug_message(findCrewIdByOccupation("Steward",3,false))


//select speaker

global.current_crewmember = global.crew[suitable_speakers[0]]
global.affected = global.current_crewmember
global.crewmember_visible=true
update_person_visuals()

// determine painting quality
global.paintingQuality = 0
global.paintingQuality = global.current_crewmember.efficiency +  irandom(5) - 5
if(global.paintingQuality<0)global.paintingQuality=0
if(global.paintingQuality>10)global.paintingQuality=10
show_debug_message("paintlevel")
show_debug_message(global.paintingQuality)

// output speech

speech_bubble.visible = true

switch(irandom(4))
	{
		case 1: speech="^Capt=ain! I'm an artist!§ And I have created ^a painting. _Can I =show it to you?"  break;
		case 2: speech="Oh Captain! § I, the artist, have drawn a painting.§_ Do you want to see it? " break;
		case 3: speech="My Captain! ^Let me show you the painting I painted, okay?" break;
		default: speech="^Captain, I have done my duty =as an artist and _painted. §Please allow me to present my painting?" break;
	}


outputSpeech(speech)
button_yes.visible=true
button_no.visible=true
//make_standard_buttons_visible()

