/// @description Insert description here
// You can write your code in this editor

var c=global.current_crewmember

//update visuals

with(person_hair)
{
	sprite_index = global.current_crewmember.hair_style
	image_blend = global.current_crewmember.hair_color
}

with(person_beard)
{
	sprite_index = global.current_crewmember.beard
	image_blend = global.current_crewmember.hair_color
}

with(person_eyebrows)
{
	sprite_index = global.current_crewmember.eyebrows
	image_blend = global.current_crewmember.hair_color
}

with(person_base)
{
	image_blend = global.current_crewmember.skin_color
}

with(person_mouth)
{
	image_blend = global.current_crewmember.skin_color
}

with(person_clothes)
{
	sprite_index = global.current_crewmember.clothes
}

