/// @description Insert description here
// You can write your code in this editor

if(visible)
{
show_debug_message("LETII DI DICIDI")	
	switch(global.current_event_status)
	{
	case event_trivial_7_0: 
		global.current_event_status=event_trivial_7_0_lsedt
		break;
	default: break;
	}
	
	//instance_destroy(instance_find(obj_text, 0))
instance_create_layer(0,0,0,letdecide_crewliste);
largelist_button_arrow_down.visible=true
//largelist_button_arrow_up.visible=true
//speech_bubble.visible=false
background_largelist.visible = true
make_standard_buttons_invisible()
}
