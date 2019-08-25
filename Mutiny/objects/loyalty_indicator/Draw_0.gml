/// @description Insert description here
// You can write your code in this editor
if(global.known_loyalty>=80)
draw_sprite_ext( indicator_loyalty, 0, x, y, 1, 1, 0, c_white, 1 );

if((global.known_loyalty<80)&&(global.known_loyalty>=60))
draw_sprite_ext( indicator_loyalty, 1, x, y, 1, 1, 0, c_white, 1 );

if((global.known_loyalty<60)&&(global.known_loyalty>=40))
draw_sprite_ext( indicator_loyalty, 2, x, y, 1, 1, 0, c_white, 1 );

if((global.known_loyalty<40)&&(global.known_loyalty>=20))
draw_sprite_ext( indicator_loyalty, 3, x, y, 1, 1, 0, c_white, 1 );

if((global.known_loyalty<20))
draw_sprite_ext( indicator_loyalty, 4, x, y, 1, 1, 0, c_white, 1 );
