

var new_character = instance_create_layer(0, 0, 1, crewmember);
with (new_character)
    {
	nationality = "England"
	alive = true
    forename = script_execute(forename_generation)
    surname = script_execute(surname_generation)
	occupation = script_execute(occupation_selection, argument0)
    }

global.crew[argument0] = new_character
script_execute(set_charactertraits,argument0)
script_execute(set_person_visuals,argument0)


/*
show_debug_message(new_character.surname);
show_debug_message(new_character);
show_debug_message(global.crew[argument0]);
show_debug_message(global.crew[argument0].surname);

show_debug_message(argument0);
*/