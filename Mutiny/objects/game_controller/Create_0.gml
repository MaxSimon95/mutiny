//window_set_fullscreen(true);
global.current_date=0
global.current_crewmember=0
global.current_event_status=0
global.crewmember_visible=false
global.daily_supply_consumption="standard"
script_execute(create_events_list)

global.occult_danger=0
global.efficiency=100
global.supplies=global.crewsize*12*60
global.loyalty=calculate_ship_loyalty()

global.known_efficiency=global.efficiency
global.known_supplies=global.supplies/6
global.known_loyalty=global.loyalty

show_debug_message("loyalty: " + string_format(global.loyalty,1,0) + ", efficiency: " + string_format(global.efficiency,1,0) + ", supplies: "+ string_format(global.supplies,1,0) + ", occult danger: "+string_format(global.occult_danger,1,0) )
//event_starter(global.events[7])

global.eventsToday = ds_list_create();
global.eventsNextDay = ds_list_create();
global.eventsIn2Day = ds_list_create();
global.eventsIn3Day = ds_list_create();
global.eventsIn4Day = ds_list_create();

cursor_sprite = cursor_normal
window_set_cursor(cr_none)
audio_sound_gain(bgm_calm_deck,0.4,0)
audio_play_sound(bgm_calm_deck,1,true)

	  
day_start()
