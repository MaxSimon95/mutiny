
instance_destroy(instance_find(obj_text, 0))
speech="The Artist shows you the painting. "

// generate painting discription. 
//// painting quality
paintingQuality = global.paintingQuality
if(paintingQuality <= 2 ) 
{
	switch(irandom(7))
	{
		case 1: speech+="It's painted incredibly poorly. " break;
		case 2: speech+="It's just the worst. " break;
		case 3: speech+="It's drawn very ugly. " break;
		case 4: speech+="It looks like a 4 year old has drawn it. " break;
		case 5: speech+="Sadly it's extremely ugly. " break;
		case 6: speech+="You can see it was drawn without any skill whatsoever. " break;
		default: speech+="It's of terrible quality. " break;
	}
	
}


if((paintingQuality > 2 )&& (paintingQuality <= 4 ))
{
	switch(irandom(7))
	{
		case 1: speech+="It looks disappointing. " break;
		case 2: speech+="It's pretty unasthetic. " break;
		case 3: speech+="It's painted in an ugly way. " break;
		case 4: speech+="It looks like an amateur has drawn it. " break;
		case 5: speech+="Sadly it's rather ugly. " break;
		case 6: speech+="The colors clash in an ugly way. " break;
		default: speech+="It's of poor quality. " break;
	}
	
}

if((paintingQuality > 4 )&& (paintingQuality <= 6 ))
{
	switch(irandom(7))
	{
		case 1: speech+="It's craftsmanship is mediocre. " break;
		case 2: speech+="The colors look a bit bland. " break;
		case 3: speech+="It looks alright, but not special. " break;
		case 4: speech+="It doesn't look exciting. " break;
		case 5: speech+="It's style is rather mediocre " break;
		case 6: speech+="The strokes look a bit clumsy. " break;
		default: speech+="It's of mediocre quality. " break;
	}
}
if((paintingQuality > 6 )&& (paintingQuality <= 8 ))
{
	switch(irandom(7))
	{
		case 1: speech+="It looks nice. " break;
		case 2: speech+="The colors mix very well. " break;
		case 3: speech+="It's of good quality. " break;
		case 4: speech+="It looks like a true artist has drawn it. " break;
		case 5: speech+="The strokes look very deliberate and playful. " break;
		case 6: speech+="You can see it was drawn a lot of skill. " break;
		default: speech+="It was drawn with a great level of detail. " break;
	}
}

if((paintingQuality > 8 ))
{
		switch(irandom(7))
	{
		case 1: speech+="It looks breathtaking. " break;
		case 2: speech+="The colors mix in an incredibly vibrant way. " break;
		case 3: speech+="It's of astounding quality. " break;
		case 4: speech+="It looks like a godlike artist has painted it. " break;
		case 5: speech+="It looks almost lifelike. A masterpiece. " break;
		case 6: speech+="You've never seen anything this beautiful. " break;
		default: speech+="It was drawn with an incredible level of detail. " break;
	}
}

// painting topic
// painting topics initialize

speech += "The painting shows "
speech += get_painting_topic_subject1()
speech += " "
subject2 = get_painting_topic_subject2()
speech += get_painting_topic_activity()
speech += " "
speech += subject2
speech += " "
speech += get_painting_topic_scenery()

//outputSpeech(speech)
outputSceneryscreenTextBox(speech)

