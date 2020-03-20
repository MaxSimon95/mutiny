/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(visible)
{
	switch(global.current_event_status)
	{
	case event_trivial_7_0: 
		global.current_event_status=event_trivial_7_0_idea
		break;
		case event_2_2:
		global.current_event_status=event_2_2_idea
		event_2_2_idea(); 
	default: break;
	}
	
	//instance_destroy(instance_find(obj_text, 0))
instance_create_layer(0,0,0,anotheridea_list);
largelist_button_arrow_down.visible=true
//largelist_button_arrow_up.visible=true
//speech_bubble.visible=false
background_largelist.visible = true
make_standard_buttons_invisible()
mouse_clear(mb_left);
if(visible)cursor_sprite = cursor_normal
}
