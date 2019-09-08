/// @description Insert description here
// You can write your code in this editor
if(visible)
{
	
		letdecide_crewliste.upperPos = min(letdecide_crewliste.upperPos+1, array_length_1d(letdecide_crewliste.list)-1);
        letdecide_crewliste.lowerPos = letdecide_crewliste.upperPos-7;
		largelist_button_arrow_up.visible = true
		
		if(letdecide_crewliste.upperPos >= array_length_1d(letdecide_crewliste.list)-1) largelist_button_arrow_down.visible = false
		else largelist_button_arrow_down.visible = true 
		
}