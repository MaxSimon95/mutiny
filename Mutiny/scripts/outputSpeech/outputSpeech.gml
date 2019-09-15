speech = argument[0]
/*
for (i=0; i<array_length_1d(speech); i++)
{
	show_debug_message(speech[i])
	scr_text(speech[i],0.7,speech_bubble.x+64,speech_bubble.y);
}
*/
audio_sound_pitch(speech0_vfx, global.current_crewmember.voice_pitch);
scr_text(speech,0.7,speech_bubble.x+64,speech_bubble.y);