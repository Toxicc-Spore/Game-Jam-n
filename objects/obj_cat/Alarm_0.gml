//squash the cat
image_xscale -= 0.05;
x += 2

//end the testing once squished
if (image_xscale <= 0)
	if instance_number(obj_cat) <= 1 {
		obj_editor.end_testing()
	} else {
		instance_destroy()
	}
else
	alarm[0] = 1
	