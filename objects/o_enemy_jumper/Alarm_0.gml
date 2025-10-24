
ground = 0
ySpeed = -jumpPower;
xSpeed = xSpeedMax

if(o_player.x > x){
	image_xscale = 1;
}
else
{
	image_xscale = -1;
	xSpeed *= -1
}

alarm[0] = irandom_range(jumpTime/2,jumpTime);
