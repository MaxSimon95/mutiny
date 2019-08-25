// set skin color

rando = irandom(array_length_1d(global.skincolors)-1)
global.crew[argument0].skin_color=global.skincolors[rando]

// set hair type

rando = irandom(array_length_1d(global.hairstyles)-1)
global.crew[argument0].hair_style=global.hairstyles[rando]

// set hair color

rando = irandom(array_length_1d(global.haircolors)-1)
global.crew[argument0].hair_color=global.haircolors[rando]

// set eyebrow type

rando = irandom(array_length_1d(global.eyebrows)-1)
global.crew[argument0].eyebrows=global.eyebrows[rando]

// set beard type

rando = irandom(array_length_1d(global.beards)-1)
global.crew[argument0].beard=global.beards[rando]

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
	default: if(irandom(100)>50) global.crew[argument0].clothes=cloth_seaman_1 else global.crew[argument0].clothes=cloth_seaman_2 
	
}

