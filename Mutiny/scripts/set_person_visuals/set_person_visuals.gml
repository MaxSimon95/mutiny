// set skin color

rando = irandom(array_length_1d(global.skincolors)-1)
global.crew[argument0].skin_color=global.skincolors[rando]

// set hair type

rando = irandom(array_length_1d(global.hairstyles)-1)

global.crew[argument0].hair_style=global.hairstyles[rando]

// set hair color

rando = irandom(array_length_1d(global.haircolors)-1)
global.crew[argument0].hair_color=global.haircolors[rando]
	if(global.crew[argument0].occupation == "Midshipman")
	switch(global.crew[argument0].hair_color)
		{
			case 12095378: global.crew[argument0].hair_color = 2888740; break;
			case 8213339: global.crew[argument0].hair_color = 2624581; break;
			case 14800071: global.crew[argument0].hair_color = 3015183; break;
		}

// set eyebrow type

rando = irandom(array_length_1d(global.eyebrows)-1)
global.crew[argument0].eyebrows=global.eyebrows[rando]

// set beard type

rando = irandom(array_length_1d(global.beards)-1)
global.crew[argument0].beard=global.beards[rando]

	if(global.crew[argument0].occupation == "Midshipman")
	global.crew[argument0].beard=global.beards[9]

// set speech color

rando = irandom(array_length_1d(global.speech_colors)-1)
global.crew[argument0].speech_color=global.speech_colors[rando]

// set cloth

switch(global.crew[argument0].occupation)
{
	case "Captain": global.crew[argument0].clothes=cloth_1st_mate; break;
	case "First Mate": global.crew[argument0].clothes=cloth_1st_mate; break;
	case "Second Mate": global.crew[argument0].clothes=cloth_234th_mate; break;
	case "Third Mate": global.crew[argument0].clothes=cloth_234th_mate; break;
	case "Fourth Mate": global.crew[argument0].clothes=cloth_234th_mate; break;
	case "Boatswain": 
		global.crew[argument0].clothes=cloth_boatswain;
		if (global.crew[argument0].hair_style=hairstyle7) global.crew[argument0].hair_style=hairstyle1
		if (global.crew[argument0].hair_style=hairstyle8) global.crew[argument0].hair_style=hairstyle2
		if (global.crew[argument0].hair_style=hairstyle10) global.crew[argument0].hair_style=hairstyle3
		if (global.crew[argument0].hair_style=hairstyle11) global.crew[argument0].hair_style=hairstyle4 
		break;
	case "Boatswain's Mate": global.crew[argument0].clothes=cloth_boatswains_mate; break;
	case "Cook": 
		if(global.crew[argument0].efficiency>3) global.crew[argument0].clothes=cloth_cook; 
		else global.crew[argument0].clothes=cloth_cook_bad; 
		break;
	case "Butcher": 
		if(global.crew[argument0].efficiency>3) global.crew[argument0].clothes=cloth_butcher; 
		else global.crew[argument0].clothes=cloth_butcher_bad; 
		break;
	case "Gunner": 
		global.crew[argument0].clothes=cloth_gunner;
		if (global.crew[argument0].hair_style=hairstyle7) global.crew[argument0].hair_style=hairstyle1
		if (global.crew[argument0].hair_style=hairstyle8) global.crew[argument0].hair_style=hairstyle2
		if (global.crew[argument0].hair_style=hairstyle10) global.crew[argument0].hair_style=hairstyle3
		if (global.crew[argument0].hair_style=hairstyle11) global.crew[argument0].hair_style=hairstyle4 
		break;
	case "Gunner's Mate": global.crew[argument0].clothes=cloth_gunners_mate; break;
	
	default: if(irandom(100)>50) global.crew[argument0].clothes=cloth_seaman_1 else global.crew[argument0].clothes=cloth_seaman_2 
	//default: global.crew[argument0].clothes=cloth_boatswain
	
}


