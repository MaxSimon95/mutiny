/// @description Insert description here
// You can write your code in this editor
global.expected_out_of_supplies_date=global.current_date + global.supplies / (global.daily_supply_consumption_subtrahend*global.crewsize)
x = supply_scale.x + global.expected_out_of_supplies_date * 2.5