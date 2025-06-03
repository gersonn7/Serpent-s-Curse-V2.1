if(state != "dead") {
    var down = place_meeting(x, y+1, obj_bloqueio);
    if(!down){
        vely += GRAVIDADE * massa * global.vel_mult;
    } else {
        vely = 0; 
    }
    y += vely;
    x += velh;
}


var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist < 48 && state != "attack" && state != "dead") {
    state = "attack";
    image_index = 0;
    possoCriarDano = true;
    damage = noone;
}

switch(state) {
    #region parado
    case "parado":
    {
        velh = 0;
        timer_state++;
        if(sprite_index != spr_inimigo_slime_idle){
            sprite_index = spr_inimigo_slime_idle;
            image_index = 0;
            image_speed = 0.2;
        }
        image_index %= 4;

        
        if(position_meeting(mouse_x, mouse_y, self))
        {
            if(mouse_check_button_pressed(mb_right))
            {
                state = "damage";
            }
        }

        if(irandom(timer_state) > 500){
            state = choose("movendo", "parado");
            timer_state = 0;
        }
        break;
    }
    #endregion

    case "damage":
    {
        scr_damage_inimigo(spr_inimigo_slime_hit, image_number - 1);
        break;
    }

    case "dead":
    {
        if(sprite_index != spr_inimigo_slime_dead)
        {
            image_index = 0;
            sprite_index = spr_inimigo_slime_dead;
            image_speed = 0.2;

            velh = 0;
            vely = 0;
            gravity = 0;

            
            while(place_meeting(x, y + 1, obj_bloqueio)){
                y -= 1;
            }
        }

        if(image_index > image_number - 1)
        {
            image_speed = 0;
            image_alpha -= 0.01;
            if(image_alpha <= 0) instance_destroy();
        }
        break;
    }

    #region movendo
    case "movendo":
    {
        timer_state++;
        if(sprite_index != spr_inimigo_slime_idle){
            sprite_index = spr_inimigo_slime_idle;
            image_index = 0;
            image_speed = 0.2;
            velh = choose(-1, 1);
        }

        image_index = clamp(image_index, 3, 8);

        if(velh == 0){
            velh = choose(-1, 1);    
        }

        // troca de estado
        if(irandom(timer_state) > 300){
            state = choose("parado", "movendo", "parado");
            timer_state = 0;
        }

        scr_attackPlayer(obj_player, sprite_width, xscale);

        break;
    }
    #endregion

    case "attack":
    {
        scr_atacando(spr_inimigo_slime_ataque, 2, 5, sprite_width/2, -sprite_height/3);
        break;
    }
}