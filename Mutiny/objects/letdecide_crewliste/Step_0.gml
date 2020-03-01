/// @description Insert description here
// You can write your code in this editor
if (showList)
{
    if (mouse_wheel_up())
    {
		
        lowerPos = max(lowerPos-1, 0);
		
        upperPos = lowerPos+7;
		largelist_button_arrow_down.visible = true
		if(lowerPos < 1) largelist_button_arrow_up.visible = false
		else largelist_button_arrow_up.visible = true
    }
    else
    if (mouse_wheel_down())
    {

        upperPos = min(upperPos+1, array_length_1d(list)-1);
        lowerPos = upperPos-7;
		

		
		largelist_button_arrow_up.visible = true
		
		if(upperPos >= array_length_1d(list)-1) largelist_button_arrow_down.visible = false
		else largelist_button_arrow_down.visible = true 
    }
}

if (mouse_check_button_pressed(mb_right))
{
    showList = true;
}