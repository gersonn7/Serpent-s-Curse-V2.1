var down = place_meeting(x, y+1, obj_bloqueio);

if(!down){
	velv += GRAVIDADE * massa * global.vel_mult	
}

var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist < 48 && state != "attack") {
    state = "attack";
    image_index = 0;
    possoCriarDano = true;
    damage = noone;
}

switch(state){
	#region parado
	case "parado":
	velh = 0;
	timer_state++
	if(sprite_index != spr_inimigo_slime_idle){
		sprite_index = spr_inimigo_slime_idle
		image_index = 0;
	}
	image_index %= 4
	
	//saindo do ataque
	
	if(irandom(timer_state) > 500){
			state = choose("movendo", "parado");
			timer_state = 0;
		}
	break;
	#endregion
	#region movendo
	case "movendo":
		timer_state++
		if(sprite_index!= spr_inimigo_slime_idle){
			sprite_index = spr_inimigo_slime_idle;
			image_index = 0;
			velh = choose(-1, 1);
		}
		
		image_index = clamp(image_index, 3, 8);
		
		if(velh == 0){
			velh = choose(-1, 1)	
		}
		
		//troca de estado
		
		if(irandom(timer_state) > 300){
			state = choose("parado", "movendo", "parado");
			timer_state = 0;
		}
		
		scr_attackPlayer(obj_player, sprite_width, xscale)
		break;
		
	#endregion
	
	case "attack":
	  scr_atacando(spr_inimigo_slime_ataque, 2, 5, sprite_width/2, -sprite_height/3);
	break;
}