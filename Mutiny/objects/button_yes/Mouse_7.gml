/// @description Insert description here
// You can write your code in this editor

if(visible)
switch(global.current_event_status)
{
	case event_trivial_7_0: 
		global.current_event_status=event_trivial_7_0_yes
		event_trivial_7_0_yes(); 
		break;
	case event_2_0:
		global.current_event_status=event_2_0_yes
		event_2_0_yes();  break;
	case event_2_2:
		global.current_event_status=event_2_2_yes
		event_2_2_yes(); 
	default: break;
}
if(visible)cursor_sprite = cursor_normal