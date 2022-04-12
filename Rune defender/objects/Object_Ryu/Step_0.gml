//Get Player Input
key_left = keyboard_check(vk_left) 
key_right  = keyboard_check(vk_right)
key_down = keyboard_check(vk_down)
key_jump = keyboard_check(vk_up);
key_punch = keyboard_check(ord("A"));
key_w = keyboard_check(ord("W"));
Key_s = keyboard_check(ord("S"));
key_Q = keyboard_check(ord("Q"));
key_reset = keyboard_check(ord("R"));

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,Object_Floor)) && (key_jump)
{
	vsp = -12.5;
}

//horizontal collision
if (place_meeting(x+hsp,y,Object_Floor))
{
	while (!place_meeting(x+sign(hsp),y,Object_Floor))
	{
		x = x + sign(hsp);
	}
	hsp =0;
}
x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,Object_Floor))
{
	while (!place_meeting(x,y+sign(vsp),Object_Floor))
	{
		y = y + sign(vsp);
	}
	vsp =0;
}
y = y + vsp;

//animation
if (!place_meeting(x,y+1,Object_Floor))
{
	sprite_index = Ryu_Jumping;
	image_speed = 0;
	if (sign(vsp) > 0) image_index=1; else image_index = 0;
}
else 
{
	image_speed=1;
	if (hsp == 0)
	{
	    sprite_index = Ryu_Idle;
	}
	else
	{
		sprite_index = Ryu_Walking;
	}
}

if (hsp != 0) image_xscale = sign(hsp)*6.5;
	
{
	if (key_punch)
	{
		sprite_index = Ryu_Punch
		mask_index = Ryu_Punch
	}

 
	if (Key_s)
	{
		sprite_index = Ryu_Kick;
		mask_index = Ryu_Kick
	}

	if (key_Q)
	{
		sprite_index = Ryu_Block;
	}
	
	if (key_down)
	{
		sprite_index = Ryu_Crouch
		mask_index = Ryu_Crouch
	}

	if sprite_index= Ryu_Walking && (key_w)
	{
		sprite_index = Ryu_Walk_Hadouken
	}
	else 
	if (key_w)
	{
		sprite_index = Ryu_hadouken
	}
else 
mask_index = Object_Ryu
}
//
if key_right
{
   x +=0;
   direction=0
};
   
if key_left  
{
   x -=0;
   direction=180
};

//Shooting 
if(key_w) && (firingdelay<1)
{
    newBullet=instance_create_layer(x,y,"Bulllets_layer",Object_Hadouken);
    newBullet.direction=Object_Ryu.direction;
    newBullet.speed=25;
	firingdelay=50; 
}
firingdelay= firingdelay-1;

//

if (key_reset)
{ 
	room_restart()
}

var Enemy = instance_place(x,y,Object_Enemy);
if(Enemy!=noone) and sprite_index=(Ryu_Punch)
{
    with Enemy 
	{ 
		instance_destroy(); 
		audio_play_sound(Hit,1,false)
		with (Object_Score) global.thescore=global.thescore+10;
	}
	
}

var Enemy = instance_place(x,y,Object_Enemy);
if(Enemy!=noone) and sprite_index=(Ryu_Kick)
{
    with Enemy 
	{
		instance_destroy(); 
		audio_play_sound(Hit,1,false)
	    with (Object_Score) global.thescore=global.thescore+10;
	}
}

//Easy enemy

var Enemy = instance_place(x,y,Object_Enemy_Easy);
if(Enemy!=noone) and sprite_index=(Ryu_Punch)
{
    with Enemy 
	{ 
		instance_destroy(); 
		audio_play_sound(Hit,1,false)
		with (Object_Score) global.thescore=global.thescore+10;
	}
	
}

var Enemy = instance_place(x,y,Object_Enemy_Easy);
if(Enemy!=noone) and sprite_index=(Ryu_Kick)
{
    with Enemy 
	{
		instance_destroy(); 
		audio_play_sound(Hit,1,false)
	    with (Object_Score) global.thescore=global.thescore+10;
	}
}

//Hard Enemy

var Enemy = instance_place(x,y,Object_Enemy_Hard);
if(Enemy!=noone) and sprite_index=(Ryu_Punch)
{
    with Enemy 
	{ 
		instance_destroy(); 
		audio_play_sound(Hit,1,false)
		with (Object_Score) global.thescore=global.thescore+10;
	}
	
}

var Enemy = instance_place(x,y,Object_Enemy_Hard);
if(Enemy!=noone) and sprite_index=(Ryu_Kick)
{
    with Enemy 
	{
		instance_destroy(); 
		audio_play_sound(Hit,1,false)
	    with (Object_Score) global.thescore=global.thescore+10;
	}
}