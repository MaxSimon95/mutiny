if (showList)
{
	draw_set_font(letdecide_font);
	draw_set_color(c_black)
	
    var x1 = background_largelist.x+16;
    var x2 = background_largelist.x+452;
	var height_entry = 30
   
    for (var i = 0; i < 7; i++)
    {
        var pos = lowerPos + i;
        //var y1 = 20 + i * 20;
		y1 = background_largelist.y+16 + i*height_entry
        var y2 = y1+height_entry-1;
        draw_rectangle(x1, y1, x2, y2, 1);
       
        var entry = list[pos];
        draw_text(x1, y1, string(entry).occupation + " " + string(entry).forename + " " + string(entry).surname);
       
        if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2))
        {   
            draw_rectangle(x1+1, y1+1, x2-1, y2-1, 1);
            if (mouse_check_button_pressed(mb_left))
            {
                showList = false;
                selectedValue = list[pos];
				background_largelist.visible=false
				largelist_button_arrow_down.visible=false
				largelist_button_arrow_up.visible=false
				button_go_on.visible=true
				instance_destroy(instance_find(obj_text, 0))
				script_execute(global.current_event_status,selectedValue)
				/*switch(global.current_event_status)
				{
					case event_trivial_7_0_lsedt: event_trivial_7_0_lsedt(selectedValue) break;
				}
				*/
            }
        }
    }
}

//draw_text(140, 20, "selected: " + string(selectedValue));
