/// @description Insert description here
// You can write your code in this editor
// Add letters over time

if (time < text_length){
	if(text_pause_time > 0 )
	{
		text_pause_time -=spd;
		print = string_copy(text,0,time);
	}
	else
	{

		time +=spd;
		print = string_copy(text,0,time);
		if(string_char_at(print, string_length(print))=="§")
		{
			
			text_pause_time = 25
		}
		
		
		if(string_char_at(print, string_length(print))==" ")
		{
			//if (!audio_is_playing(speech0_vfx))
			audio_stop_sound(speech0_vfx);
			audio_play_sound(speech0_vfx, 1, false);
			person_mouth.open = true
		}
	
		
		if(string_char_at(print, string_length(print))=="^")
		{
			
			audio_sound_pitch(speech0_vfx, global.current_crewmember.voice_pitch * 1.1);
		}
		
		if(string_char_at(print, string_length(print))=="=")
		{
			
			audio_sound_pitch(speech0_vfx, global.current_crewmember.voice_pitch * 1);
		}
		
		if(string_char_at(print, string_length(print))=="_")
		{
			
			audio_sound_pitch(speech0_vfx, global.current_crewmember.voice_pitch * 0.9);
		}
		
	}
	print = string_replace_all(print, "§", "");
	print = string_replace_all(print, "^", "");
	print = string_replace_all(print, "=", "");
	print = string_replace_all(print, "_", "");
 
 
 
 
}

///Render textbox and text
draw_set_alpha(alpha);
if (alpha < 1) alpha += spd/10; else alpha = 1;

draw_set_font(font);
//draw_set_color(c_gray);
//draw_rectangle(x,y,x+boxwidth,y+boxheight,0);
//draw_set_color(c_black);
//draw_rectangle(x,y,x+boxwidth,y+boxheight,1);

draw_set_color(global.current_crewmember.speech_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext(
 x + padding,
 y + padding,
 print,
 font_size+(font_size/2),
 maxlength
);

draw_set_alpha(1);