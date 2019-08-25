/// @description Insert description here
// You can write your code in this editor
randomize();
global.crewsize = 60

	global.crew[60] = 0
	
  initialize_surnames()
  initialize_forenames()
  initialize_occupations()
  initialize_person_visuals()
  initialize_speech_colors()
   for (i = 0; i < global.crewsize; i += 1)
   {

	
   script_execute(crewmember_generation,i)
   show_debug_message(string(global.crew[i].occupation) + " - " + string(global.crew[i].forename) + " " +  string(global.crew[i].surname));
  /* show_debug_message("- Aggressivity: " + string(global.crew[i].aggressivity) )
   show_debug_message("- Loyalty: " + string(global.crew[i].loyalty) )
   show_debug_message("- Extraversion: " + string(global.crew[i].extraversion) )
   show_debug_message("- Healthyness: " + string(global.crew[i].healthyness) )
   show_debug_message("- Efficiency: " + string(global.crew[i].efficiency) )
   show_debug_message("- Stealth: " + string(global.crew[i].stealth) ) */
   }
   