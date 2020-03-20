global.painting_subject1_crewId=-1

if(irandom(100)<33)
{
	randomcrewid = selectRandomCrewId(true)
	global.painting_subject1_crewId=randomcrewid
	
		returntext = global.crew[randomcrewid].occupation 
		returntext += " "
		returntext += global.crew[randomcrewid].forename 
		returntext += " "
		returntext += global.crew[randomcrewid].surname 
		return returntext

}
else
{


switch (irandom(32))
{
	default: return("a horse") break;
	case 1: return("a group of sailors") break;
	case 2: return("a mermaid") break;
	case 3: return("a shark") break;
	case 4: return("a dolphin") break;
	case 5: return("a kraken") break;
	case 6: return("pirates") break;
	case 7: return("a bottle of ooze") break;
	case 8: return("a barrel of beer") break;
	case 9: return("the english royalty") break;
	case 10: return("a pig") break;
	case 11: return("a pidgeon") break;
	case 12: return("a loaf of bread") break;
	case 13: return("a masked man") break;
	case 14: return("a three headed monkey") break;
	case 15: return("a bear") break;
	case 16: return("a poor beggar") break;
	case 17: return("a foreign merchant") break;
	case 18: return("a peasant") break;
	case 19: return("Jesus Christ") break;
	case 20: return("the devil") break;
	case 21: return("an unknown naval officer") break;
	case 22: return("a wounded soldier") break;
	case 23: return("an old senile man") break;
	case 24: return("a blindfolded woman") break;
	case 25: return("an african shaman") break;
	case 26: return("a green seasnake") break;
	case 27: return("a bug wearing a mask") break;
	case 28: return("a loving couple") break;
	case 29: return("a group of thugs") break;
	case 30: return("a wheel of cheese") break;
	case 31: return("an elephant") break;

}
}