var sec_space = 0;

for (var i = 0; i < array_length(name_array); i += 1)
{
    if (type_array[i] == "section" && i > 0)
        sec_space += 30;

    if (type_array[i] == "section")
        draw_set_colour(c_yellow);
    else
        draw_set_colour(c_white);

    draw_text(room_width/2, drawy + i * 30 + sec_space, name_array[i]);
}