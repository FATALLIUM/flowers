moveRight = keyboard_check(ord("D"));
moveUp = keyboard_check(ord ("W"));
moveLeft = keyboard_check(ord ("A"));
moveDown = keyboard_check(ord ("S"));

// getting x and ySpd
xSpd = (moveRight - moveLeft) * moveSpeed;
ySpd = (moveDown - moveUp) * moveSpeed;

// check if pauser exists
if instance_exists(obj_pauser) {
	xSpd = 0;
	ySpd = 0;
}

// set sprite
mask_index = sprite[DOWN];
if ySpd == 0 {
	if xSpd > 0 {face = RIGHT;}
	if xSpd < 0 {face = LEFT;}
}

if xSpd == 0 {
	if ySpd > 0 {face = DOWN;}
	if ySpd < 0 {face = UP;}
} 

sprite_index = sprite[face];

// collisions

if place_meeting(x + xSpd, y, obj_wall) {
	xSpd = 0;
}
if place_meeting(x, y + ySpd, obj_wall) {
	ySpd = 0;
}


// move player
if (keyboard_check_pressed(vk_shift)) {
	moveSpeed *= 1.6;
}

if (keyboard_check_released(vk_shift)) {
	moveSpeed = 2;
}

x += xSpd;
y += ySpd;

// animation
if xSpd == 0 && ySpd == 0 {
	image_index = 0;
}

if (room == yourRoom) {
	sprite[RIGHT] = spr_player1_right;
	sprite[UP] = spr_player1_up;
	sprite[LEFT] = spr_player1_left;
	sprite[DOWN] = spr_player1_down;
}
// depth
depth = -bbox_bottom;