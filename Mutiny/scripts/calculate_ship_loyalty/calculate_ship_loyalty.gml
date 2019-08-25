loyaltysum = 0
for (i=0; i<global.crewsize; i++)
{
loyaltysum += global.crew[i].loyalty*10
}
return (loyaltysum / global.crewsize)