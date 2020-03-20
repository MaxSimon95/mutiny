instance_destroy(instance_find(obj_text, 0))


if(global.affected.loyalty<50)
{
	outputSpeech("What? You didn't even look at it! I won't forget this humiliation.")
}
else
{
	outputSpeech("I see. You must be very busy.")
}

make_standard_buttons_invisible()
button_go_on.visible=true
global.affected.loyalty -= 15+irandom(15)