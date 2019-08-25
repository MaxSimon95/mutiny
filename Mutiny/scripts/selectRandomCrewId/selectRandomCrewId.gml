// argument[0] alive?

j=0
for (i=1; i<array_length_1d(global.crew)-1; i++) // i starts at 1 to exclude captain
{
	if global.crew[i].alive
	{
		tempArray[j] = i
		j++
	}
}

return irandom(array_length_1d(tempArray)-1)
