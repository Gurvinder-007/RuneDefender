var Enemy = instance_place(x,y,Object_Enemy);
if(Enemy!=noone) 
{
    with Enemy 
	{
		instance_destroy(); 
		with (Object_Score) global.thescore=global.thescore+10;
	}
	instance_destroy()
}
image_angle=direction

//easy
var Enemy = instance_place(x,y,Object_Enemy_Easy);
if(Enemy!=noone) 
{
    with Enemy 
	{
		instance_destroy(); 
		with (Object_Score) global.thescore=global.thescore+10;
	}
	instance_destroy()
}
image_angle=direction

//hard
var Enemy = instance_place(x,y,Object_Enemy_Hard);
if(Enemy!=noone) 
{
    with Enemy 
	{
		instance_destroy(); 
		with (Object_Score) global.thescore=global.thescore+10;
	}
	instance_destroy()
}
image_angle=direction