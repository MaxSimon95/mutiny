/// @description Insert description here
// You can write your code in this editor
if (open)
{
	sprite_index = mouthlip
	mouth_open_timer--
	if(mouth_open_timer <= 0)
	{
		mouth_open_timer = mouth_open_duration
		open=false;
	}
	
}
else
{
	sprite_index = mouthclosed
}
