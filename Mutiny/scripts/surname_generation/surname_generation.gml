totalnames = array_length_1d(global.surname_single) + array_length_1d(global.surname_start) - 2
iroll = irandom(totalnames-2)
if (iroll <= array_length_1d(global.surname_single))
{
	iroll = irandom(array_length_1d(global.surname_single)-1)
	name = global.surname_single[iroll]
}
else
{
	iroll = irandom(array_length_1d(global.surname_start)-1)
	iroll2 = irandom(array_length_1d(global.surname_end)-1)
	name = global.surname_start[iroll] + global.surname_end[iroll2]
}
return name