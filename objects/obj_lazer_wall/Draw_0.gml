draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
if !opened {
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, obj_switch_color_manager.color_bank[door_id][0], 1)
}