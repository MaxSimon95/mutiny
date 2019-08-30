/// @description Insert description here
// You can write your code in this editor
draw_set_font(button_font);
draw_set_colour(c_black);
if (global.crewmember_visible)
{
	
draw_text(3,3,global.current_crewmember.forename + " " + global.current_crewmember.surname)
draw_text(3,30,global.current_crewmember.occupation)

}