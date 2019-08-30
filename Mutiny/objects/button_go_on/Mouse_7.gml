/// @description Insert description here
// You can write your code in this editor
if(visible)
{
	instance_destroy(instance_find(obj_text, 0))
	visible=false
	start_next_daily_event()
}
