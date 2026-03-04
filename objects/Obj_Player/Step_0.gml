//movement code  checks if and what key is being pressed.
//the code here checks what keys are being pressed, it checks for WASD and ARROW Keys. and Shift for run
right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));
sprint_key = keyboard_check(vk_shift);

//running
//the code her is checking for sprint key making the shift key is being pressed, if it is it changes the movement speed, you can change these variables in the creation code
if sprint_key 
{move_spd = sprint_spd;}
else 
{move_spd = persistent_move_spd;}

// this code is saying if your movement speed is equal to the sprint speed (Speeds are in the creation code) make the sprites the running version otherwise make it the walking sprites
if move_spd = sprint_spd
{
sprite[RUN_RIGHT] = Spr_Running_Right;
sprite[RUN_UP] = Spr_Running_Up;
sprite[RUN_LEFT] = Spr_Running_Left;
sprite[RUN_DOWN] = Spr_Running_Down;
} 
else  
{
sprite[RIGHT] = Spr_Walking_Right;
sprite[UP] = Spr_Walking_Up;
sprite[LEFT] = Spr_Walking_Left;
sprite[DOWN] = Spr_Walking_Down;
}


//this code is just for x and y, im making them variables for ease of reading
x += xspd;
y += yspd;

//does math to move your charecter with your previous code.
// " move_spd", allows for us to change the speed easily, by going into the create code.
//the math here basically makes it so if you press both keys for the oposite direction your charecter stops moving or if you press one key itll move you to the move_spd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//sprint
//if you are pressing the sprint key move at the sprint speed 
//same math as above but instead of walking its running
if sprint_key
{
xspd = (right_key - left_key) * sprint_spd;
yspd = (down_key - up_key) * sprint_spd;
}


//sprite animatons
// "Trust me bro"
//if the speed is more or less than 0 (not moving) in the direction you are going set the face to these directions, these directions are set to the moving sprites in the create code
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};

if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
// same as above but if you are running 
if move_spd = sprint_spd
{
if xspd > 1 && right_key{face = RUN_RIGHT};
if xspd < 1 && left_key {face = RUN_LEFT};

if xspd == 0
{
if yspd > 1 && down_key {face = RUN_DOWN}; 
if yspd < 1 && up_key {face = RUN_UP};
}
}

// if you run into the collision object you no longer move into it
if place_meeting(x + xspd, y, Obj_collision) == true
{
xspd = 0;
}

if place_meeting(x, y + yspd, Obj_collision) == true
{
yspd = 0;
}



//stop animation if not walking
//ill make ilde sprites later so we wont allways need this
if xspd == 0 && yspd == 0
{
image_index = 0;
}


//sprite face
//this works with the sprite animation code to make the animations work
//it sets the sprite to the sprite we desire
sprite_index = sprite[face];