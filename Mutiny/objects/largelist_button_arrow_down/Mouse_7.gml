/// @description Insert description here
// You can write your code in this editor

var list_to_be_traversed

show_debug_message(script_get_name(global.current_event_status))  
if(string_count("lsedt",script_get_name(global.current_event_status))>0)
list_to_be_traversed = letdecide_crewliste

if(string_count("idea",script_get_name(global.current_event_status))>0)
list_to_be_traversed = anotheridea_list

if(visible)
{
	
		list_to_be_traversed.upperPos = min(list_to_be_traversed.upperPos+1, array_length_1d(list_to_be_traversed.list)-1);
        list_to_be_traversed.lowerPos = list_to_be_traversed.upperPos-7;
		largelist_button_arrow_up.visible = true
		
		if(list_to_be_traversed.upperPos >= array_length_1d(list_to_be_traversed.list)-1) largelist_button_arrow_down.visible = false
		else largelist_button_arrow_down.visible = true 
		
}