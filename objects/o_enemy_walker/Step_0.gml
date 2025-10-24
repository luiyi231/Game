event_inherited()
// shoot ------------------

if(canShoot)
{
	if( abs(x-o_player.x) <= attackRange_x )
	{
		if( abs(y-o_player.y) <= attackRange_y )
		{
			xSpeedTemp = hspeed;
			hspeed = 0;
			canShoot = 0;
			alarm[0] = shootDelay;
		}
	}
}

// checks -----------------

if(hspeed == 0)
{
	if(o_player.x > x) image_xscale = 1; else image_xscale = -1;
}

if(hspeed > 0)
{
	if( place_meeting(x+xCheck,y,o_solid) )
	{
		c_flip();
	}
	else
	{
		if( collision_rectangle(x+18,y,x+20,y+2,o_solid,0,1) == noone )
		{
			c_flip();
		}
	}
}

if(hspeed < 0)
{
	if( place_meeting(x-xCheck,y,o_solid) )
	{
		c_flip();
	}
	else
	{
		if( collision_rectangle(x-18,y,x-20,y+2,o_solid,0,1) == noone )
		{
			c_flip();
		}
	}
}
