instance_destroy(instance_find(obj_text, 0))
global.efficiency -= 5
global.affected.loyalty += 1
outputSpeech("As you wish.§ He will face no consequences")
make_standard_buttons_invisible()
button_go_on.visible=true