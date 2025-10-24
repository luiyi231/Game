/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

switch(state)
{
	case "prepare_att":
		sprite_index = s_boss_stand;
	break;
	case "shoot_laser":
	case "shoot_misil":
		sprite_index = s_boss_shoot;
	break;
	case "prepare_dash":
		sprite_index = s_boss_dash_prep;
	break;
	case "dash":
		sprite_index = s_boss_dash;
	break;
	case "prepare_jump":
		sprite_index = s_boss_jump_prep;
	break;
	case "jump":
		sprite_index = s_boss_jump;
	break;
}
 
if(side_right)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}
if (hp <= 0)
{
	part_particles_create(global.part_front,x,y,global.p_enemy_death,10)
}
 
mask_index = s_player_mask;
 
draw_self();
