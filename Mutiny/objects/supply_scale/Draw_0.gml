/// @description Insert description here
// You can write your code in this editor
draw_sprite(supplyScaleBackground, 0, x, y);
draw_set_color(make_colour_rgb(245,161,93));
draw_set_font(fnt)
draw_text(x-5,y-70,"Supply Plan:")
var rations = ""

switch(global.daily_supply_consumption)
{
case 0: rations+="Normal"  break;
case -1: rations+="Three quarters"  break;
case -2: rations+="Half"	break;
case -3: rations+="One third"	break;
case -4: rations+="Quarter"	break;
case -5: rations+="One sixth"	break;
case -6: rations+="One twelth"	break;
case -7: rations+="Zero"	break;
case 1: rations+="One and a half"  break;
case 2: rations+="Double"  break;
case 3: rations+="Triple"  break;
case 4: rations+="Quadrupel"  break;
case 5: rations+="Quintupel"  break;
case 6: rations+="Sevenfold"  break;
case 7: rations+="Tenfold"  break;
}
rations+=" rations"
draw_text(x-5,y+25,rations)