
if(ds_list_size(global.eventsToday)>0)
{
temp_event = ds_list_find_value(global.eventsToday, 0);
ds_list_delete(global.eventsToday, 0);
show_debug_message("Executing event: " + temp_event.name)
single_event_starter(temp_event)
}
else
evening_start()
