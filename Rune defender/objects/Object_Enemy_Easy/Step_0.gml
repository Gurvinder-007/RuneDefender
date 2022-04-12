if (instance_exists(Object_Ryu))
{
	move_towards_point(Object_Ryu.x,Object_Ryu.y,spd);
	if
	(firingdelay<1)
	{newBullet=instance_create_layer(x-75,y-94,"Bulllets_layer",Object_Blast);
	newBullet.direction=Object_Enemy_Easy.direction;newBullet.speed=25firingdelay=700; 
	} 
	firingdelay= firingdelay-1;
	if (newBullet){
		            sprite_index= Enemy_Shooting_Easy
	              }
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
		    sprite_index = Enemy_Idle_Easy;
		}
		else
		{
			sprite_index = Enemy_Walking_Easy;
		}

if (hsp != 0) image_xscale = sign(hsp)*1.05;



alarm[0] = room_speed * 2; // Shoot every 2 seconds

















