if(!dead){
	// INPUT ------------------------
persistent = 1;
if(keyboard_check(vk_right))
{
	if(xSpeed < 0) xSpeed = 0;
	if(xSpeed < xSpeedMax) xSpeed += xAccel;
	right = 1;
}

if(keyboard_check(vk_left))
{
	if(xSpeed > 0) xSpeed = 0;
	if(xSpeed > -xSpeedMax) xSpeed -= xAccel;
	right = 0;
}

if(keyboard_check(vk_right) and keyboard_check(vk_left)) xSpeed = 0;
if(!keyboard_check(vk_right) and !keyboard_check(vk_left)) xSpeed = 0;

if (keyboard_check(vk_down))
{
	if (ground)
	{
		crouch = 1;
		xSpeed = 0;
		weapon_ModY = -15;
	}
}
else
{
	crouch = 0;
	weapon_ModY = -25;
}

if (keyboard_check_pressed(vk_alt))
{
    if (ground == 1)
    {
        ground = 0;

        if (crouch)
        {
            if (place_free(x, y + 1))
            {
                y += 1;
            }
            else
            {
                ySpeed = -jumpPower;
            }
        }
        else
        {
            ySpeed = -jumpPower;
        }

    }
    else if (djump == 1 && canJumps)
    {
		ySpeed = -jumpPower;
		djump = 0;
        part_particles_create(global.part_front, x, y + sprite_height/2, global.p_jump, 10);
    }
}






if(keyboard_check_released(vk_alt))
{
	if(ySpeed < 0) ySpeed = 0;
}

// MOVIMIENTO --------------------

if(xSpeed != 0)
{
	if(xSpeed > 0)
	{
		move_contact_solid(0,xSpeed);
	}
	else
	{
		move_contact_solid(180,abs(xSpeed));
	}
}

if(ySpeed != 0)
{
	if(ySpeed > 0)
	{
		if(collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1))
		{
			move_contact_solid(270,ySpeed);
		}
		else{
			ySpeed_temp = round(ySpeed);
			while(collision_rectangle(x-12,y,x+12,y+ySpeed_temp,o_terrain,0,1) !=noone and ySpeed_temp !=0 )
			{
				ySpeed_temp -= 1;
			}
			y += ySpeed_temp;
		}
	}
	else
	{
		move_contact_solid(90,abs(ySpeed));
	}
}

// CHECKS --------------------------

if(collision_rectangle(x-12,y, x+12,y+1,o_terrain,0,1)and collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1)==noone)
{
	djump=1;
	ground = 1;
	ySpeed = 0;
}
else
{
	ground = 0;
	ySpeed += grav;
	if(ySpeed > fallMax) ySpeed = fallMax;
	
	if(!place_free(x,y-1))
	{
		if(ySpeed < 0) ySpeed = 0;
	}
}

if(hp <= 0){
	dead = 1;
	invi = 1;
	alarm[1] = -1;
}

// WEAPONS ---------------------------

if(keyboard_check(vk_control))
{
	if(canShoot)
	{
		switch(weapon)
		{
			case "pistol":
				c_weapon_pistol();
			break;
		}
	}
}

}
//PLAYER IS DEAD--------------
else
{
	image_alpha -= 0.005;
	if(image_alpha <= 0){
		// RESPAWN-----------
		global.player_respawn = 1;
		hp = hpMax;
		dead = 0;
		invi = 0;
		xSpeed = 0;
		ySpeed = 0;
		canJumps = 0;
		room_goto(global.checkpoint);
		
	}
}


