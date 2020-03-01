global.crew[argument0].aggressivity = irandom(10)
global.crew[argument0].loyalty = 5+irandom(3)

if(global.crew[argument0].occupation ="First Mate")||(global.crew[argument0].occupation ="Second Mate")||(global.crew[argument0].occupation ="Third Mate")||(global.crew[argument0].occupation ="Fourth Mate")
global.crew[argument0].loyalty += irandom(4)

global.crew[argument0].extraversion = irandom(10)
global.crew[argument0].cunning = irandom(10)
global.crew[argument0].efficiency = irandom(10) 
global.crew[argument0].healthyness = irandom(10)
global.crew[argument0].sanity = 8+irandom(2)
global.crew[argument0].mental_resistance =irandom(10) +2-global.crew[argument0].aggressivity/2.5 -1.67+global.crew[argument0].cunning/3 -1.67+global.crew[argument0].efficiency/3 

if(global.crew[argument0].mental_resistance < 0) global.crew[argument0].mental_resistance = 0
if(global.crew[argument0].mental_resistance > 10) global.crew[argument0].mental_resistance = 10

show_debug_message("sanity")
show_debug_message(global.crew[argument0].mental_resistance)

