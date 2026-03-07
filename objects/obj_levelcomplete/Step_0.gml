var all_pressed = true;

with (obj_button){
    if (!pressed)
        all_pressed = false;
}

visible = all_pressed;

if (place_meeting(x, y, obj_cat) && visible)
{
    global.levelcomplete = true;
}