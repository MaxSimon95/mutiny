/// @description Insert description here
// You can write your code in this editor
string_date = "Day: " 
string_date+= string(global.current_date)

draw_sprite(fullscreenTextBackground,0,0,0)
draw_set_color(c_white)
draw_set_font(button_font)
draw_text(400,300,string_date)

