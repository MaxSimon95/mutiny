/// @description Insert description here
// You can write your code in this editor
if (down)
{
	if(y <= -64)
	{
	downmultiplier=1
	vspeed=0.1	* downmultiplier
	
	}
	if(y>-64 && y<=-56 )
	{
	vspeed=0.1	* downmultiplier
	}
	if(y>-56 && y<=-48 )
	{
	vspeed=0.15	* downmultiplier
	}
	if(y>-48 && y<=-40 )
	{
	vspeed=0.25 * downmultiplier
	}
	if(y>-40 && y<=-32 )
	{
	vspeed=0.25	* downmultiplier
	}
	if(y>-32 && y<=-24 )
	{
	vspeed=0.15	* downmultiplier
	}
	if(y>-16 && y<=-8 )
	{
	vspeed=(0.1 * downmultiplier)
	}
	if(y>-8 && y<=-0 )
	{
	downmultiplier = -1
	vspeed=(0.1 * downmultiplier)
	}
	if(y >= 0)
	{
	downmultiplier = -1
	}
}

