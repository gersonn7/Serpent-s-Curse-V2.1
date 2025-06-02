//movimentacao

var right, left, attack, jump, dash;
down = place_meeting(x, y + 1, obj_bloqueio);

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check_pressed(vk_space);
attack = keyboard_check(ord("O"));
dash = keyboard_check(ord("J"));
velh = (right - left) * max_velh * global.vel_mult;
mostrar_tecla = (!down) || attackDown;


if(keyboard_check(ord("S")) && !down){
	state = "ataque aereo down"
}


//gravidade

if(!down){
	if(velv < max_velv){
	velv+=GRAVIDADE*massa * global.vel_mult;
	}
}


//maquina de estados


switch(state){
	#region parado
	case "parado":
		//comportamento
		sprite_index = spr_player_parado_1;
		
		
		//troca de estado
		//movendo
		if(right || left){
			state ="movendo";
			image_index = 0;
		}
		else if(jump || velv != 0){
			state = "pulando";
			velv = (-max_velv) * jump;
			image_index = 0;
		}else if(attack){
			AttackInicio(down)
		}else if(dash){
			state = "dashando";
			image_index = 0;
		}
		
		break;
	
	#endregion
	
	#region movendo
	case "movendo":
    sprite_index = spr_player_movendo;
	
    if (right) image_xscale = 1;
    else if (left) image_xscale = -1;

    // Troca de estado
    if(abs(velh)< .1){
        state = "parado";
    } else if(jump || velv != 0){
        state = "pulando";
        velv = (-max_velv) * jump;
        image_index = 0;
    } else if(attack){
        AttackInicio(down)
    } else if(dash){
        state = "dashando";
        image_index = 0;
    }
    break;
	#endregion
		
	#region pulando
	case "pulando":

    if (velv > 0) {
        sprite_index = spr_player_caindo;
    } else {
        sprite_index = spr_player_pulo;
        if (image_index >= image_number - 1) {
            image_index = image_number - 1;
        }
    }

    // troca de estado
    if (down) {
        state = "parado";
        velh = 0;
		src_limparListaSfx(snd_pulo)
    }
    if (attack) {
        AttackInicio(down);
		src_limparListaSfx(snd_pulo)
    }
    break;
		
		//estado de ataque
		
	#endregion
	
	#region ataque
		case "ataque":
		scr_sfx(snd_ataque_player)
		velh = 0;
		//comportamento
		sprite_index = spr_player_ataque1;
		
		//objeto damage
		
		// Criar objeto de dano
		if(image_index >= 2 && damage == noone && attackReady) {
			damage = instance_create_layer(x + sprite_width/2, y - sprite_height/2, layer, obj_damage);
			damage.damage = ataque;
			damage.pai = id;
			attackReady = false;
		}
		
		
		//combo 
		
	
		//troca de estado
		if(image_index > image_number - 1){
			state = "parado";
			velh = 0;
			combo = 0;
			AttackFinal()
			src_limparListaSfx(snd_ataque_player)
		}
		if(dash){
			state = "dashando";
			image_index = 0;
			combo = 0;
			src_limparListaSfx(snd_ataque_player)
			if(damage){
				instance_destroy(damage, false);
				damage = noone;
			}
		}
		break
		
	#endregion
	#region
case "ataque aereo down":
    velv += 1;
	velh = 0;

    if(!attackDown){
        sprite_index = spr_ataque_aereo2_ready;
		scr_sfx(snd_ataqueEspecial)
        image_index = 0;
        attackDown = true;
    }

    if(sprite_index == spr_ataque_aereo2_ready && image_index > 0.07){
        sprite_index = spr_player_ataque_aereo2_loop;
        image_index = 0;
    }

    if(sprite_index == spr_player_ataque_aereo2_loop && damage == noone && attackReady) {
        damage = instance_create_layer(x + sprite_width/2 + velh*2 , y - sprite_height/2, layer, obj_damage);
        damage.damage = ataque;
        damage.pai = id;
        damage.destruirDano = false;
        attackReady = false;
    }

    if(down){
		src_limparListaSfx(snd_ataqueEspecial)
        if(sprite_index != spr_player_ataque_aereo2_end){
            sprite_index = spr_player_ataque_aereo2_end;
            image_index = 0;
        } else {
            if(image_index >= image_number - 0.2){
                state = "parado";
                attackDown = false;
                screenShake(10);
				src_limparListaSfx(snd_ataqueEspecial)
                AttackFinal();
            }
        }
    }

break;
	#endregion
	#region ataque aereo
	case "ataque aereo":
		if(sprite_index != spr_player_ataque_aereo1){
			sprite_index = spr_player_ataque_aereo1
			image_index = 0;
			scr_sfx(snd_ataque_player)
		}
   
		
		if(image_index >= 1 && damage == noone && attackReady) {
			damage = instance_create_layer(x + sprite_width/2 + velh*2 , y - sprite_height/2, layer, obj_damage);
			damage.damage = ataque;
			damage.pai = id;
			attackReady = false;
		}
		
		//troca de estado
		if(image_index >= image_number - 1)
		{
			state = "pulando"
			src_limparListaSfx(snd_ataque_player)
			AttackFinal()
		}
		if(down){
			state = "parado"
			src_limparListaSfx(snd_ataque_player)
			AttackFinal()
		}
		
		break;
	#endregion
	
	
	#region dash
	case "dashando":
	if(sprite_index!= spr_player_dash){
		image_index = 0;
		sprite_index = spr_player_dash;
	}
		velh = image_xscale*dash_vel;
		
		if(image_index >= image_number - 1 || !down){
			state = "parado"	
		}
	break;
		
		
	#endregion
	
	#region damage
	case "damage":
		if(sprite_index != spr_player_hit){
			sprite_index = spr_player_hit
			image_index = 0;
			screenShake(3)
		}
		
		velh = 0;	
		
	//condicao saida
		if(vida_atual> 0){
			if(image_index >= image_number -1){
			state = "parado"	
			}
		}else{
			if(image_index >= image_number -1){
			state = "dead"	
			}
		}
		break;
	#endregion
		
	#region dead
	case "dead":
{
    if (sprite_index != spr_player_morte)
    {
        image_index = 0;
        sprite_index = spr_player_morte;
        image_speed = 0.2;
    }

    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;

        if (instance_exists(obj_game_controller))
        {
            with (obj_game_controller)
            {
                gameover = true;
            }
        }
    }
}
break;
	#endregion
		
	default:
		state = "parado"
	break
}


virtual_key_add(90, 600, 80, 80, ord("A"))
virtual_key_add(180, 600, 80, 80, ord("D"))
virtual_key_add(980, 480, 80, 80, ord("S"));
virtual_key_add(1100, 500, 80, 80,ord("O"));
virtual_key_add(1040, 580, 80, 80, vk_space);
virtual_key_add(1150, 580, 80, 80, ord("J"));


if(mouse_check_button_pressed(mb_left) && state == "dead"){ 
	if (instance_exists(obj_game_controller)) { 
		obj_game_controller.gameover = false;
		obj_game_controller.valor = 0; 
		obj_game_controller.contador = 0; 
		obj_game_controller.tocou_gameover = false; }
		instance_destroy(); 
		room_restart(); 
}