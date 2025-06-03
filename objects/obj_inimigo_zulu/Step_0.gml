switch (state) {
    case "parado":
        // Troca para sprite parado se necessário
        if (sprite_index != spr_inimigo_zulu_idle) {
            sprite_index = spr_inimigo_zulu_idle;
            image_index = 0;
        }

        // Verifica distância do player para mudar estado
        if (instance_exists(obj_player)) {
            var _dist = point_distance(x, y, obj_player.x, obj_player.y);

            if (_dist < 400) {
                state = "movendo";
                show_debug_message(state);
            }
        }
        break;

    case "movendo":
        // Troca para sprite de movimento se necessário
        if (sprite_index != spr_inimigo_zulu_move) {
            sprite_index = spr_inimigo_zulu_move;
            image_index = 0;
        }

        if (instance_exists(obj_player)) {
            var _dist = point_distance(x, y, obj_player.x, obj_player.y);
            var dir = point_direction(x, y, obj_player.x, obj_player.y);
            var _speed = 2;

            if (_dist > 200) {
                var velh = lengthdir_x(_speed, dir);

                x += velh;

                if (velh != 0) {
                    image_xscale = sign(velh);
                }

                show_debug_message(_dist);
            } else {
                _speed = 0;
                state = "ataque";
            }
        }
        break;
		
		
	case "ataque":
		if (sprite_index != spr_inimigo_zulu_attack) {
		    sprite_index = spr_inimigo_zulu_attack;
		    image_index = 0;
		}

	if (possoCriarDano && tiros_disparados < quantidade_de_tiros) {
	    possoCriarDano = false;
    
	    var bullet = instance_create_layer(x + 16 * image_xscale, y + 10, "Instances", obj_boss_bullet);
	    tiros_disparados += 1;
    
	    alarm[0] = irandom_range(20, 40);
	}

	if (tiros_disparados >= quantidade_de_tiros && possoCriarDano) {
	    tiros_disparados = 0;
	    quantidade_de_tiros = irandom_range(2, 4);
    
	    state = "movendo";
	}
		break
		
	case "damage":
		if (sprite_index != spr_inimigo_zulu_damage) {
            sprite_index = spr_inimigo_zulu_damage;
            image_index = 0;
        }
		break
		
		
	case "dead":
		if (sprite_index != spr_inimigo_zulu_death) {
            sprite_index = spr_inimigo_zulu_death;
            image_index = 0;
        }
		break
}