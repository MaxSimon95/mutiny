/// @description Insert description here
// You can write your code in this editor
if(visible)
{
			
		 letdecide_crewliste.lowerPos = max(letdecide_crewliste.lowerPos-1, 0);
		show_debug_message(letdecide_crewliste.lowerPos)
        letdecide_crewliste.upperPos = letdecide_crewliste.lowerPos+7;
		largelist_button_arrow_down.visible = true
		if(letdecide_crewliste.lowerPos < 1) largelist_button_arrow_up.visible = false
		else largelist_button_arrow_up.visible = true
		
}