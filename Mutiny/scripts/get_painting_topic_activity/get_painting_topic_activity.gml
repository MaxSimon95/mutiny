global.painting_activitySeverity=1
global.painting_subject1_Influence=0
global.painting_subject2_Influence=0


switch (irandom(36))
{
	default: 
	global.painting_subject1_Influence=-1
	return("getting chased by") 
	break;
	
	case 1:
	global.painting_subject1_Influence=-2
	return("being kidnapped by") 
	break;
	
	case 2:
	global.painting_subject1_Influence=-1
	return("being attacked by") 
	break;
	
	case 3: 
	return("fighting with") 
	break;
	
	case 4:
	global.painting_subject1_Influence=-2
	global.painting_subject2_Influence=-2
	return("dancing with") 
	break;
	
	case 5: 
	return("arguing with") 
	break;
	
	case 6: 
	global.painting_subject2_Influence=-2
	return("mourning the loss of") 
	break;
	
	case 7:
	global.painting_subject1_Influence=-2
	global.painting_subject1_Influence=-1
	return("dreaming about") 
	break;
	
	case 8: 
	return("swearing revenge against") 
	break;
	
	case 9:
	global.painting_subject1_Influence=-1
	return("trying to impress") 
	break;
	
	case 10: 
	global.painting_subject1_Influence=-2
	return("hiding from") 
	break;
	
	case 11: 
	global.painting_subject1_Influence=-3
	return("adoring") 
	break;
	
	case 12:
	return("hugging") 
	break;
	
	case 13: 
	return("punching") 
	break;
	
	case 14:
	global.painting_subject1_Influence=-3
	global.painting_subject2_Influence=-3
	return("kissing") 
	break;
	
	case 15:
	global.painting_subject2_Influence=-1
	return("stabbing") 
	break;
	
	case 16:
	global.painting_subject1_Influence=-2
	global.painting_subject2_Influence=-2
	return("sleeping next to") 
	break;
	
	case 17:
	global.painting_subject2_Influence=-1
	return("shooting") 
	break;
	
	case 18:
	global.painting_subject1_Influence=-1
	global.painting_subject2_Influence=-2
	return("strangling") 
	break;
	
	case 19:
	global.painting_subject1_Influence=-1
	return("staring at") 
	break;
	
	case 20:
	global.painting_subject2_Influence=-1
	return("throwing stones at") 
	break;
	
	case 21: 
	return("sharing a meal with") 
	break;
	
	case 22: 
	return("singing a song about")
	break;
	
	case 23:
	global.painting_subject2_Influence=-1
	return("plotting to kill") 
	break;
	
	case 24:
	global.painting_subject1_Influence=-2
	global.painting_subject2_Influence=-2
	return("holding hands with") 
	break;
	
	case 25:
	global.painting_subject1_Influence=-1
	return("kneeling before") 
	break;
	
	case 26:
	global.painting_subject2_Influence=-1
	return("holding the remains of") 
	break;
	
	case 27:
	global.painting_subject2_Influence=-1
	return("decapitating") 
	break;
	
	case 28: 
	return("planning a journey with") 
	break;
	
	case 29: 
	return("sharing a laugh with")
	break;
	
	case 30:
	global.painting_subject1_Influence=-1
	return("being set on fire by") 
	break;
	
	case 31:
	global.painting_subject1_Influence=-1
	global.painting_subject2_Influence=-1
	return("betraying the trust of") 
	break;
	
	case 32:
	global.painting_subject2_Influence=-3
	return("using a stick to poke") 
	break;
	
	case 33:
	global.painting_subject2_Influence=-2
	return("telling a joke about") 
	break;
	
	case 34:
	global.painting_subject1_Influence=-1
	global.painting_subject2_Influence=-1
	return("poisoning") 
	break;
	
	global.painting_subject1_Influence=-1
	case 35: 
	return("impersonating") 
	break;

}