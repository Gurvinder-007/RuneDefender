var bullet = instance_create_layer(x-75,y-94,"Bulllets_layer",Object_Blast); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = Object_Enemy.direction // Give the bullet a direction
   speed = 6;
}
alarm[0] = room_speed * 2; // Reset this alarm so the enemy will shoot after 2 more seconds. This will loop.