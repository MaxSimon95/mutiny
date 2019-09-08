/// @description Insert description here
// You can write your code in this editor
var j=0
for (var i = 0; i < array_length_1d(global.crew)-1; i++)
{
	if((global.crew[i].occupation != "Captain")
	&&(global.crew[i] != global.current_crewmember)
	&&(global.crew[i] != global.affected))
	{
		list[j] = global.crew[i];
		j++
	}
	
    
}
lowerPos = 0;
upperPos = 7;
showList = true;
selectedValue = 0;