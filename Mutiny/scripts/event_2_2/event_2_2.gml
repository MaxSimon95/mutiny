// output speech

speech_bubble.visible = true
make_standard_buttons_visible()

switch(irandom(4))
	{
		case 1: speech="I want the whole crew to see it. Can I put it up somewhere?"  break;
		case 2: speech="Am I allowed to put the painting up somewhere on the ship?" break;
		case 3: speech="I suppose I'm allowed to put the painting up somewhere everyone can see it?" break;
		default: speech="Surely you're allowing me to put up the painting for everyone to see, right?" break;
	}
	
	outputSpeech(speech)