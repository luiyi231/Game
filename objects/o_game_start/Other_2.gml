/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.previous_room = room;

global.checkpoint = 0;
global.player_respawn = 0;

//Particulas---------------------

global.p_pistol = part_type_create();
part_type_shape(global.p_pistol,pt_shape_square);
part_type_size(global.p_pistol,0.05,0.10,0,0);
part_type_color3(global.p_pistol,65535,33023,14847);
part_type_alpha3(global.p_pistol,1,1,0);
part_type_speed(global.p_pistol,0.75,1.50,-0.06,0);
part_type_direction(global.p_pistol,0,359,0,0);
part_type_blend(global.p_pistol,1);
part_type_life(global.p_pistol,15,30);

global.p_enemy = part_type_create();
part_type_shape(global.p_enemy,pt_shape_line);
part_type_size(global.p_enemy,0.25,0.15,0,0);
part_type_color2(global.p_enemy,255,8421631);
part_type_alpha3(global.p_enemy,1,1,0);
part_type_speed(global.p_enemy,1,1.50,-0.06,0);
part_type_direction(global.p_enemy,0,359,0,0);
part_type_orientation(global.p_enemy,0,0,0,0,1);
part_type_blend(global.p_enemy,1);
part_type_life(global.p_enemy,15,40);

//estos tres tan echos con chat pues el programa para hacer particulas no funca en widows 11

global.p_enemy_death = part_type_create();
part_type_shape(global.p_enemy_death, pt_shape_explosion);
part_type_size(global.p_enemy_death, 0.2, 0.4, 0, 0);
part_type_color3(global.p_enemy_death, c_red, c_orange, make_color_rgb(60, 60, 60));
part_type_alpha3(global.p_enemy_death, 1, 0.7, 0);
part_type_speed(global.p_enemy_death, 1.5, 3.5, -0.08, 0);
part_type_direction(global.p_enemy_death, 0, 359, 0, 0);
part_type_blend(global.p_enemy_death, 1);
part_type_life(global.p_enemy_death, 25, 50);

global.p_jump = part_type_create();
part_type_shape(global.p_jump, pt_shape_spark);     
part_type_size(global.p_jump, 0.55, 0.21, 0, 0);      
part_type_color3(global.p_jump, c_white, c_yellow, c_orange); 
part_type_alpha3(global.p_jump, 1, 0.5, 0);     
part_type_speed(global.p_jump, 1, 2, -0.05, 0);    
part_type_direction(global.p_jump, 80, 100, 0, 0);    
part_type_blend(global.p_jump, 1);                   
part_type_life(global.p_jump, 15, 25);     

global.p_boss_death = part_type_create();
part_type_shape(global.p_enemy_death, pt_shape_explosion);
part_type_size(global.p_enemy_death, 0.4, 0.8, 0, 0);
part_type_color3(global.p_enemy_death, c_red, c_orange, make_color_rgb(60, 60, 60));
part_type_alpha3(global.p_enemy_death, 1, 0.7, 0);
part_type_speed(global.p_enemy_death, 1.5, 3.5, -0.08, 0);
part_type_direction(global.p_enemy_death, 0, 359, 0, 0);
part_type_blend(global.p_enemy_death, 1);
part_type_life(global.p_enemy_death, 50, 100);


