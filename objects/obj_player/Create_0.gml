


// Inherit the parent event

randomize();

var cam = instance_create_layer(x, y, layer, obj_cam);
cam.target = id;

event_inherited();

max_vida = 10;
vida_atual = max_vida;
max_armor = 10;
armor_atual = 0;

max_velh = 4;

max_velv = 6;
dash_vel = 5;
showState = false;

combo = 0;
damage = noone;
attackReady = true;
attackDown = false;
sons_tocados = ds_map_create();

tecla_ativa = false;
mostrar_tecla = false;

coins = 0;

AttackInicio = function(down){
	
	if(down){
	state = "ataque";
    velh = 0;
    image_index = 0;
	}else{
			state = "ataque aereo";
		    velh = 0;
		    image_index = 0;
		}
}

AttackFinal = function(){
	if(image_index >= image_number - 1)
		{
			attackReady = true;
			if(damage){
				instance_destroy(damage, false);
				damage = noone;
			}	
}
}