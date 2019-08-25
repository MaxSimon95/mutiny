//window_set_fullscreen(true);
global.current_crewmember=0
global.current_event_status=0
global.crewmember_visible=false
script_execute(create_events_list)

global.occult_danger=0
global.efficiency=100
global.supplies=100
global.loyalty=script_execute(calculate_ship_loyalty)

global.known_efficiency=global.efficiency
global.known_supplies=global.supplies
global.known_loyalty=global.loyalty

show_debug_message("loyalty: " + string_format(global.loyalty,1,0) + ", efficiency: " + string_format(global.efficiency,1,0) + ", supplies: "+ string_format(global.supplies,1,0) + ", occult danger: "+string_format(global.occult_danger,1,0) )
event_trivial_7_0()

