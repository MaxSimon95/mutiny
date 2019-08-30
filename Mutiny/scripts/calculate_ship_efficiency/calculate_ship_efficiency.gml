
switch(global.daily_supply_consumption)
{
case "third": global.efficiency -= 1 break; 
case "quarter": global.efficiency -= 2 break; 
case "none": global.efficiency -= 6 break; 
}

if (global.efficiency > 100 ) global.efficiency = 100

return global.efficiency