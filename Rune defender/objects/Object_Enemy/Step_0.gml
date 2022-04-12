if (instance_exists(Object_Ryu))
{
	move_towards_point(Object_Ryu.x,Object_Ryu.y,spd);
	if
	(firingdelay<1)
	{newBullet=instance_create_layer(x-75,y-94,"Bulllets_layer",Object_Blast);
	newBullet.direction=Object_Enemy.direction;newBullet.speed=25firingdelay=400; 
	} 
	firingdelay= firingdelay-1;
	if sprite_index= Enemy_Jumping && (newBullet){sprite_index= Enemy_Jump_Shooting}
}	

	vsp = vsp + grv;


	//horizontal collision
	if (place_meeting(x+hsp,y,Object_Floor))
	{
		while (!place_meeting(x+sign(hsp),y,Object_Floor))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp;
	}
	x = x + hsp;

	//vertical collision
	if (place_meeting(x,y+vsp,Object_Floor))
	{
		if (vsp>0) 
		{
			done = 1;
		}
		while (!place_meeting(x,y+sign(vsp),Object_Floor))
		{
			y = y + sign(vsp);
		}
		vsp =0;
	}
	y = y + vsp;

	//animation
	
	    image_speed=1;
		if (hsp == 0)
		{
		    sprite_index = Enemy_Idle;
		}
		else
		{
			sprite_index = Enemy_Walking;
		}

if (hsp != 0) image_xscale = sign(hsp)*1.05;



alarm[0] = room_speed * 2; // Shoot every 2 seconds

















//if sprite_index= Enemy_Jumping && (key_w){sprite_index= Enemy_Jump_Shooting}elseif sprite_index= Enemy_Walking && (key_w){sprite_index = Enemy_Walk_Shooting}else if (key_w){sprite_index = Enemy_Shooting}
//if key_right{x +=0;direction=0};if key_left{x -=0;direction=180}; 
key_w = keyboard_check(vk_numpad9);
//Shooting 
if(key_w) && (firingdelay<1){newBullet=instance_create_layer(x-75,y-94,"Bulllets_layer",object3);newBullet.direction=Object_Enemy.direction;newBullet.speed=25firingdelay=50; } firingdelay= firingdelay-1;