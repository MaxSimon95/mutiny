  font = fnt;
 font_size = font_get_size(font);
   font_size = font_get_size(font);
 
 instance_create_layer(0,0,"fullscreenTextboxLayer",SceneryscreenTextBox)
 instance_create_layer(192,512,"fullscreenTextboxLayer",button_continue)

 
 show_debug_message("start output fullscreen")
 
 padding = 16;
 maxlength = 320;
 text = argument0;

 text_length = string_length(text);

 
 draw_set_font(fnt)

 SceneryscreenTextBox.screentext = text

 show_debug_message("variables initialized")
SceneryscreenTextBox.visible=true

 show_debug_message("bg visible")

draw_set_color(make_colour_rgb(255, 207, 142))
draw_set_halign(fa_left);
draw_set_valign(fa_top);

 show_debug_message("draw variables set")

 show_debug_message("drawing text completed.")