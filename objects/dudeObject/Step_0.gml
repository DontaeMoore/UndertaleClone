
//step


xsp = 0;
ysp = 0;


if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(mouse_x, mouse_y, "textLayer", textboxObject)
}


if keyboard_check(vk_left)
{
	xsp=-moveSpeed
}

if keyboard_check(vk_right)
{
	xsp=+moveSpeed
}

if keyboard_check(vk_down)
{
	ysp=+moveSpeed
}

if keyboard_check(vk_up)
{
	ysp=-moveSpeed
}

//if place_meeting(x, y+1, oGround)
//{
//	ysp=0
//	if keyboard_check(vk_up){
//		ysp=-2
//	}
		
//}

// Movement check
if (xsp != 0 || ysp != 0) {
    // Animate when moving
    image_speed = 0.2; // Adjust speed as needed
} else {
    // Stop on first frame when idle
    image_speed = 0;
    image_index = 0;
}
	

move_and_collide(xsp, ysp, groundObject);

//Spike and flag colission

//if place_meeting(x, y, oFlag){
//	room_goto_next()
//}
//if place_meeting(x, y, oSpike){
//	room_restart()
//}
