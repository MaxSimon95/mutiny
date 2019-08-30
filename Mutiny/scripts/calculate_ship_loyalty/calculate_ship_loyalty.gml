loyaltysum = 0
for (i=0; i<global.crewsize; i++)
{
	if(global.crew[i].loyalty>10) global.crew[i].loyalty=10
	if(global.crew[i].loyalty<0) global.crew[i].loyalty=0
	loyaltysum += global.crew[i].loyalty*10
}
return (loyaltysum / global.crewsize)