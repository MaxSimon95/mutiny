//argument[0] killed crew member
//argument[1] cause of death

// kill member
show_debug_message(argument[0].forename + " " + argument[0].surname + "is now dead.")
argument[0].alive=false
global.crewsize--


// show animation

show_debug_message("ANIMACTIOOON!")

switch(argument[1])
{
case "internal bleeding": break;
default: show_debug_message("unhandled death style!") break;
}
