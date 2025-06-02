if(velh != 0) xscale = sign(velh);
image_xscale = xscale;

if(position_meeting(mouse_x, mouse_y, id)){
	if(mouse_check_button_released(mb_left))
		showState = !showState;
}

image_speed = (img_spd/room_speed * global.vel_mult);