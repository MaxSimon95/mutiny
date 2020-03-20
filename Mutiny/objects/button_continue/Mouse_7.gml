/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(visible)
switch(global.current_event_status)
{

	case event_2_0_yes:
		instance_destroy(SceneryscreenTextBox)
		global.current_event_status=event_2_2
		event_2_2(); 
		instance_destroy()
		break;
	default: break;
}
if(visible)cursor_sprite = cursor_normal