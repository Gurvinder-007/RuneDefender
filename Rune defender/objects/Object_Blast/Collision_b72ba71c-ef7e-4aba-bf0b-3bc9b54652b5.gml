if Object_Ryu.sprite_index = (Ryu_Block) 
{
	with (Object_Lives) lp=lp-5;
	instance_destroy()
}
else
{
	with (Object_Lives) lp=lp-10;
    instance_destroy();
}
