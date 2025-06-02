
var down = place_meeting(x, y + 1, obj_bloqueio);

if(!down){
	velv += GRAVIDADE * massa * global.vel_mult
};

//maquina de estados

//parado
switch(state){
	case "parado":
	velh = 0;
	timer_state++
	if(sprite_index != spr_inimigo_sprout_idle){
		image_index = 0;	
	}
		sprite_index = spr_inimigo_sprout_idle;
		
	if(position_meeting(mouse_x, mouse_y, self)){
			if(mouse_check_button_pressed(mb_right)){
				state = "damage"	
			}
		}
		
		if(irandom(timer_state) > 300){
			state = choose("movendo", "movendo", "parado");
			timer_state = 0;
		}
		if (instance_exists(obj_player)) {
			  scr_attackPlayer(obj_player, 64, image_xscale);
		}

		
		break;
		
	//movendo
	case "movendo":
		
		timer_state++
		if(sprite_index!= spr_inimigo_sprout_move){
			image_index = 0;
			velh = choose(-1, 1);
		}
		sprite_index = spr_inimigo_sprout_move;
		
		//troca de estado
		if(irandom(timer_state) > 300){
			state = choose("parado", "movendo", "parado");
			timer_state = 0;
		}
		if (instance_exists(obj_player)) {
			scr_attackPlayer(obj_player, 64, image_xscale);
		}

		break;
	
	case "attack":
    var spr_attack = spr_inimigo_sprout_attack;
    
   
	
    var min_frame_dano = 3;

    var max_frame_ataque = 6;
    
    var offset_x = 30 * image_xscale + sprite_width / 4;
    var offset_y = -sprite_height / 2;
    
    scr_atacando(spr_attack, min_frame_dano, max_frame_ataque, offset_x, offset_y);
	scr_sfxumaVez(snd_ataque_inimigo, floor(image_index) == min_frame_dano);
    
    break;

	//damage
	case "damage":
	velh = 0;
	if(sprite_index != spr_inimigo_sprout_damage){
		image_index = 0;
	}
		sprite_index = spr_inimigo_sprout_damage;
		
		//troca de estado
		if(image_index > image_number -1){
			//check estado
			if(vida_atual>0){
				state = "parado";
			}else if(vida_atual<=0){
				state = "dead";
			}
		}
		break;
		
	
	//dead
	case "dead":
	if(sprite_index != spr_inimigo_sprout_dead){
		sprite_index = 0;
		velh = 0;
	}
		sprite_index = spr_inimigo_sprout_dead;
		if(image_index > image_number -1){
			image_speed = 0;
			image_alpha -= .01;
	}
		break;
}

if(delay>0){
	delay--	
}
