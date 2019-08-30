show_debug_message("Event starter start")
global.current_event_status=argument[0].assigned_script
show_debug_message(global.current_event_status)
show_debug_message("Event starter before script execute")
//argument[0].last_occurence_date=global.current_date   // moved into daily_event_selection
script_execute(argument[0].assigned_script)
